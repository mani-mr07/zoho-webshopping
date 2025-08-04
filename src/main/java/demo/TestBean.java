package demo;

public class TestBean {
    private String message = "No message specified";
    
    private String name="Manikandan";

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    
    public void setName(String name) {
    	this.name=name;
    }
    public String getName() {
    	return name;
    }
}
