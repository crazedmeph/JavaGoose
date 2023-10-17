package Goose.concurrent;

import Goose.Event;
import Goose.Events.LogoutEvent;
import Goose.GameSettings;
import Goose.GameWorld;
import Goose.Logger;
import org.apache.commons.codec.Charsets;

import java.io.IOException;
import java.net.Socket;

/**
 * This is a new test, to leverage micro threads for server sockets
 */
public class SocketExecutor implements Runnable{
    private Socket socket;
    private GameWorld gameWorld;

    public SocketExecutor(Socket socket, GameWorld gameWorld) {
        this.socket = socket;
        this.gameWorld = gameWorld;
    }

    @Override
    public void run() {
        long last = System.nanoTime();
        byte[] buffer = new byte[512];
        int res;
        try {
            int count = 0;
            while(gameWorld.getRunning()) {
                if (socket.getInputStream().available() != 0) {
                    socket.setReceiveBufferSize(512);
                    res = socket.getInputStream().read(buffer);

                    if (res <= 0) {
                        this.lostConnection(socket);
                    } else {
                        String strBuffer = new String(buffer, 0, res, Charsets.US_ASCII);
                        this.getGameWorld().received(socket, strBuffer);
                    }
                } else {
                    // This seems to happen when someone is alt tabbed maybe?
                    //TODO - Try removing this to see what is happening here.
                    if (System.nanoTime() - last > GameSettings.getDefault().getLogoutLagTime() * 1_000_000_000L) {
                        String ping = "PING" + "\u0001";
                        socket.getOutputStream().write(ping.getBytes());
                        last = System.nanoTime();
                    }
                }
            }
        } catch (Exception e) { // this is called when client host closes aspereta.
            try {
                this.getGameWorld().lostConnection(socket);
            } catch (Exception ex) {
                throw new RuntimeException(ex);
            }
        }
    }

    public void lostConnection(Socket sock) {
        try {
            Logger.INSTANCE.connect("Connection lost: " + sock.getInetAddress().getHostAddress());
            sock.close();
            Event ev = new LogoutEvent();
            ev.setData(sock);
            ev.setTicks(ev.getTicks()
                    + (GameSettings.getDefault().getLogoutLagTime() * this.getGameWorld().getTimerFrequency()));
            this.getGameWorld().getEventHandler().addEvent(ev);
        } catch (Exception exception) {
            Logger.INSTANCE.connect("Exception logging out user");
        }
    }

    public Socket getSocket() {
        return socket;
    }

    public GameWorld getGameWorld() {
        return gameWorld;
    }
}
