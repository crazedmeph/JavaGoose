package Goose;

import Goose.Events.LoginEvent;
import Goose.concurrent.SocketExecutor;
import org.apache.commons.codec.Charsets;

import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * The GameServer class handles all of the basic Socket handling to do with a server It contains the
 * GameWorld class where all of the game specific stuff happens
 */
public class GameServer extends Thread{
    ServerSocket listen;
    ArrayList<Socket> sockets;
    GameWorld gameworld;

    /**
     * Constructor, constructs the GameWorld
     * <p>
     * Then calls Start to set up everything Then calls GameLoop, the main program loop
     */
    public GameServer() throws Exception {
        this.sockets = new ArrayList<>();
        this.gameworld = new GameWorld(this);
    }

    public void run(){
        try {
            this.init();
            this.gameLoop();
        } catch (Exception e) {
            Logger.INSTANCE.println(e);
        }
    }

    /**
     * Start, server setup
     * <p>
     * Calls along to the GameWorld.Start() Sets up a listen socket and adds it to the socket list
     */
    public void init() throws Exception {
        this.gameworld.start();
        String gameServerIP = GameSettings.getDefault().getGameServerIP();
        short gameServerPort = GameSettings.getDefault().getGameServerPort();

        this.listen = new ServerSocket(gameServerPort, 10, InetAddress.getByName(gameServerIP));
        GameWorld.isSaved = false;
    }

    /**
     * GameLoop, the main game loop
     * <p>
     * Handles all of the low level socket details Eg, on a new connection it calls
     * GameWorld.NewConnection(Socket) on a closed connection calls GameWorld.LostConnection(Socket)
     * on receiving data calls GameWorld.Received(Socket, String)
     * <p>
     * At the end of the loop it calls GameWorld.Update(), Update returns a bool to specify to keep
     * the server going or not
     * <p>
     * Once the loop is stopped this.Stop() is called to tidy up
     */
    public void gameLoop() throws Exception {
        long lastPlayerCount = System.currentTimeMillis();
        Thread.ofVirtual().start(new ServerSocketHandler(this.listen, this));
        while (this.gameworld.getRunning()) {
            long start = System.currentTimeMillis();
            //TODO - This should not be needed but for some reason events are still being added even when players are not on the game. Need to fix this and remove the manual LoginEvent code
            if(this.gameworld.getPlayerHandler().getPlayerCount() > 0) {
                this.gameworld.update();
                if(System.currentTimeMillis() - start > 50) {
                    Logger.INSTANCE.println("Loop took: " + (System.currentTimeMillis() - start));
                }
                if(System.currentTimeMillis() - lastPlayerCount > (60000 * 5)){
                    lastPlayerCount = System.currentTimeMillis();
                    Logger.INSTANCE.println("Current Players Online: " + this.gameworld.getPlayerHandler().getPlayerCount());
                }
            }else{
                LinkedHashMap<Long, Event> readyEvents = new LinkedHashMap<>();
                this.gameworld.getEventHandler().putAll(readyEvents);

                for (Map.Entry<Long, Event> entry : readyEvents.entrySet()) {
                    Event e = entry.getValue();
                    if(e instanceof LoginEvent) {
                        e.ready(this.gameworld);
                        this.gameworld.getEventHandler().removeEvent(e);
                    }
                }

                Thread.sleep(2000);
            }
        }
        this.stopServer();
    }

    private class ServerSocketHandler implements Runnable {
        ServerSocket listen;
        GameServer gameServer;

        public ServerSocketHandler(ServerSocket listen, GameServer gameServer) {
            this.listen = listen;
            this.gameServer = gameServer;
        }

        @Override
        public void run() {
            while (gameServer.gameworld.getRunning()) {
                try {
                    Socket clientSocket = listen.accept();
                    gameServer.gameworld.newConnection(clientSocket);
                    Thread.ofVirtual().start(new SocketExecutor(clientSocket, gameworld));
                } catch (Exception e) {
                    Logger.INSTANCE.println(e);
                }
            }
        }

    }

    /**
     * Stop, server shutdown tidyup
     * <p>
     * Calls along to GameWorld.Stop()
     * <p>
     * Closes all sockets
     */
    public void stopServer() throws Exception {
        this.gameworld.stop();
        for (Object __dummyForeachVar1 : this.sockets) {
            Socket sock = (Socket) __dummyForeachVar1;
            sock.close();
        }
    }

    /**
     * Disconnect, disconnect socket
     * <p>
     * Closes socket then removes from our sockets list
     */
    public void disconnect(Socket sock) throws Exception {
        sock.close();
        this.sockets.remove(sock);
    }

}
