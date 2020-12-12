package chat.model;

/**
 * Modela una sala de chat. No es necesario modificar esta clase.
 */
public class ChatRoom {

    private long id;
    private String name;

    public ChatRoom(long id, String name) {
        this.id = id;
        this.name = name;
    }

    public long getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }
}
