package chat.model;

/**
 * Modela un mensaje. No es necesario modificar esta clase.
 */
public class Message {

    private String text;
    private String createdBy;

    public Message (String text, String createdBy) {
        this.text = text;
        this.createdBy = createdBy;
    }


    public String getText() {
        return this.text;
    }

    public String getCreatedBy() {
        return this.createdBy;
    }

    public String toString() {
        return "[" + this.createdBy + "]: " + text;
    }
}
