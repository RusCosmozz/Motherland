package ru.iu3.motherland.model;


import ru.iu3.motherland.model.enums.ContractType;

import javax.persistence.*;
import java.util.Date;


//Класс Договор

@Entity
@Table(name = "contract")
public class Contract extends AbstractBaseEntity{


    private ContractType contractType;


    private Date date;

    public Contract() {
    }

    public Contract(Integer id, ContractType contractType, Date date) {
        super(id);
        this.contractType = contractType;
        this.date = date;
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
