package ru.iu3.motherland.model;


import javax.persistence.*;

@Entity
@Table(name = "user")
public class User extends AbstractBaseEntity {
    @Column(name = "username")
    private String username;

    @Column(name = "password")
    private String password;

    @Column
    private String role;



    public User() {
    }

    public User(Integer id, String username, String password, String role) {
        super(id);
        this.username = username;
        this.password = password;
        this.role = role;

    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }



}
