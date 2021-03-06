package ru.iu3.motherland.model;

import org.decimal4j.util.DoubleRounder;
import org.hibernate.annotations.Formula;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.io.Serializable;
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
    private double sum;




    public Bill() {
    }

    public Bill(Integer id, Date date, Client client, Product product, int countOfProduct) {
        super(id);
        this.date = date;
        this.client = client;
        this.product = product;
        this.countOfProduct = countOfProduct;
        this.sum=product.getPrice()*countOfProduct;
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


    public double getSum() {
        return DoubleRounder.round(product.getPrice()*countOfProduct,2);
    }

   public void setSum() {
        this.sum = product.getPrice()*countOfProduct;
    }


}
