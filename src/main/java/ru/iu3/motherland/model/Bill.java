package ru.iu3.motherland.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;


//Класс Счет
@Entity
@Table(name = "bill")
public class Bill extends AbstractBaseEntity implements Serializable {

    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "dd.MM.yyyy")
    @Column(name = "date")
    private Date date;

    @OneToOne
    @JoinColumn(name = "clientId",referencedColumnName = "id")
    private Client client;

    @OneToOne
    @JoinColumn(name = "productId",referencedColumnName = "id")
    private Product product;

    @Column(name = "countOfProduct")
    private int countOfProduct;

    @Column(name = "sum")
    private int sum;


    @GeneratedValue
    @Column(name = "sumNDS")
    private double sumNDS;


    public Bill() {
    }

    public Bill(Integer id, Date date, Client client, Product product, int countOfProduct, int sum) {
        super(id);
        this.date = date;
        this.client = client;
        this.product = product;
        this.countOfProduct = countOfProduct;
        this.sum = sum;
    }


    public int getCountOfProduct() {
        return countOfProduct;
    }

    public void setCountOfProduct(int countOfProduct) {
        this.countOfProduct = countOfProduct;
    }


    public Date getDate() {

        return date;
    }

    public void setDate(Date date){
        this.date = date;
    }


    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }


    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }


    public int getSum() {
        return sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }

    public void setSumNDS() {
        this.sumNDS = sum*1.2;
    }

    public double getSumNDS() {
        return Math.round(sum*1.2);
    }
}
