package ru.iu3.motherland.model;


import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "invoiceexpenditure")
public class InvoiceExpenditure extends AbstractBaseEntity {

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

    @OneToOne
    @MapsId
    @JoinColumn(name = "billId")
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
