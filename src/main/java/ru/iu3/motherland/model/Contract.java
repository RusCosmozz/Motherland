package ru.iu3.motherland.model;


import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;


//Класс Договор

@Entity
@Table(name = "contract")
public class Contract extends AbstractBaseEntity{


    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "dd.MM.yyyy")
    @Column(name = "date")
    private Date date;



    public Contract() {
    }

    public Contract(Integer id, Date date) {
        super(id);
        this.date = date;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

}
