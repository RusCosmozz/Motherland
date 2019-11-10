package ru.iu3.motherland.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

//Класс Транспортной компании
@Entity
@Table(name = "transportcompany")
public class TransportCompany extends AbstractBaseEntity implements Serializable {

    @Column(name = "name")
    protected String name;

    @Column(name = "address")
    protected String address;

    @Column(name = "phoneNum")
    protected String phoneNum;


    public TransportCompany() {
    }

    public TransportCompany(Integer id, String name, String phoneNum, String address) {
        super(id);
        this.name = name;
        this.phoneNum = phoneNum;
        this.address = address;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return this.name;
    }




}
