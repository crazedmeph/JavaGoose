package Goose.Events;

import Goose.Event;
import Goose.GameWorld;
import Goose.NPC.States;

public class NPCSpawnEvent extends Event {
    public NPCSpawnEvent() throws Exception {
        super("NPCSpawnEvent");
    }

    public void ready(GameWorld world) throws Exception {
        if (this.getNPC().getState() == States.Dead) this.getNPC().spawn(world);

    }

}
