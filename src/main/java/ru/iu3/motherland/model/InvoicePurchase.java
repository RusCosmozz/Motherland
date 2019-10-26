package ru.iu3.motherland.model;

import javax.persistence.*;
import java.util.Date;

//класс прих. накладной

@Entity
@Table(name = "invoicepurchase")
public class InvoicePurchase extends AbstractBaseEntity {

    @Temporal(TemporalType.DATE)
    @Column(name = "date")
    private Date date;

    @OneToOne
    @MapsId
    @JoinColumn(name = "supplierId")
    private Supplier supplier;

    @OneToOne
    @MapsId
    @JoinColumn(name = "transportCompanyId")
    private  TransportCompany transportCompany;


    @OneToOne
    @MapsId
    @JoinColumn(name = "productId")
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
