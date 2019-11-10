package ru.iu3.motherland.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

//класс прих. накладной

@Entity
@Table(name = "invoicepurchase")
public class InvoicePurchase extends AbstractBaseEntity implements Serializable {

    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "dd.MM.yyyy")
    @Column(name = "date")
    private Date date;

    @OneToOne
    @JoinColumn(name = "supplierId",referencedColumnName = "id")
    private Supplier supplier;

    @OneToOne
    @JoinColumn(name = "transportCompanyId",referencedColumnName = "id")
    private  TransportCompany transportCompany;


    @OneToOne
    @JoinColumn(name = "productId",referencedColumnName = "id")
    private Product product;

    @Column(name = "countOfProduct")
    private int countOfProduct;

    public InvoicePurchase() {
    }

    public InvoicePurchase(Integer id, Date date, Supplier supplier, TransportCompany transportCompany, Product product, int countOfProduct) {
        super(id);
        this.date = date;
        this.supplier = supplier;
        this.transportCompany = transportCompany;
        this.product = product;
        this.countOfProduct = countOfProduct;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Supplier getSupplier() {
        return supplier;
    }

    public void setSupplier(Supplier supplier) {
        this.supplier = supplier;
    }

    public TransportCompany getTransportCompany() {
        return transportCompany;
    }

    public void setTransportCompany(TransportCompany transportCompany) {
        this.transportCompany = transportCompany;
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
}
