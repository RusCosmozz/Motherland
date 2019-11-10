package ru.iu3.motherland.model;

import javax.persistence.*;
import java.io.Serializable;

//Класс Клиент

@Entity
@Table(name = "client")
public class Client extends AbstractBaseEntity implements Serializable {

    @Column(name = "name")
    protected String name;

    @Column(name = "address")
    protected String address;

    @Column(name = "phoneNum")
    protected String phoneNum;

    @OneToOne
    @JoinColumn(name = "contractId",referencedColumnName = "id")
    private Contract contract;

    public Client() {
    }

    public Client(Integer id, String name, String address, String phoneNum, Contract contract) {
        super(id);
        this.name = name;
        this.address = address;
        this.phoneNum = phoneNum;
        this.contract = contract;
    }

    public Contract getContract() {
        return contract;
    }

    public void setContract(Contract contract) {
        this.contract = contract;
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
