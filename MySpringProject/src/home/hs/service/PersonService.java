package home.hs.service;

public class PersonService {
    private String name;

    public void setName(String name) {
        this.name = name;
    }

    public void info(){
        System.out.println(name);
    }

}
