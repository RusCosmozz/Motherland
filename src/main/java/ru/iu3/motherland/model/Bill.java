package ru.iu3.motherland.model;

import javax.persistence.*;
import java.util.Date;


//Класс Счет
@Entity
@Table(name = "bill")
public class Bill extends AbstractBaseEntity {

    @Temporal(TemporalType.DATE)
    @Column(name = "date")
    private Date date;

    @OneToOne
    @MapsId
    @JoinColumn(name = "clientId")
    private Client client;

    @OneToOne
    @MapsId
    @JoinColumn(name = "productId")
    private Product product;

    @Column(name = "countOfProduct")
    private int countOfProduct;

    @Column(name = "sum")
    private int sum;

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

    public void setDate(Date date) {
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


    public double getSumNDS() {
        return sum*1.2;
    }
}
