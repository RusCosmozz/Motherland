package ru.iu3.motherland.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;


//Класс Поставщик
@Entity
@Table(name = "supplier")
public class Supplier extends AbstractBaseEntity {

    @Column(name = "name")
    protected String name;

    @Column(name = "address")
    protected String address;

    @Column(name = "phoneNum")
    protected String phoneNum;

    public Supplier() {
    }

    public Supplier(Integer id, String name, String phoneNum, String address) {
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
