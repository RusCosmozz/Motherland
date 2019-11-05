package ru.iu3.motherland.model;


import ru.iu3.motherland.model.enums.ContractType;

import javax.persistence.*;
import java.util.Date;


//Класс Договор

@Entity
@Table(name = "contract")
public class Contract extends AbstractBaseEntity{

    @Column(name = "contractType")
    @Enumerated(EnumType.STRING)
    private ContractType contractType;

    @OneToOne
    @MapsId
    @JoinColumn(name = "clientId")
    private Client client;

    @Temporal(TemporalType.DATE)
    @Column(name = "date")
    private Date date;

    public Contract() {
    }

    public Contract(Integer id, ContractType contractType, Client client, Date date) {
        super(id);
        this.contractType = contractType;
        this.client = client;
        this.date = date;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public ContractType getContractType() {
        return contractType;
    }

    public void setContractType(ContractType contractType) {
        this.contractType = contractType;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
