package ru.iu3.motherland.model;


import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "invoiceexpenditure")
public class InvoiceExpenditure extends AbstractBaseEntity implements Serializable {

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

    @OneToOne
    @JoinColumn(name = "billId",referencedColumnName = "id")
    private Bill bill;

    public InvoiceExpenditure() {
    }

    public InvoiceExpenditure(Integer id, Date date, Client client, Product product, int countOfProduct, Bill bill) {
        super(id);
        this.date = date;
        this.client = client;
        this.product = product;
        this.countOfProduct = countOfProduct;
        this.bill = bill;
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

    public int getCountOfProduct() {
        return countOfProduct;
    }

    public void setCountOfProduct(int countOfProduct) {
        this.countOfProduct = countOfProduct;
    }

    public Bill getBill() {
        return bill;
    }

    public void setBill(Bill bill) {
        this.bill = bill;
    }
}
