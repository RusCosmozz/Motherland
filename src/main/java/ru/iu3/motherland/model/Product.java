package ru.iu3.motherland.model;

import javax.persistence.*;
import java.io.Serializable;


//Класс Товар
@Entity
@Table(name = "product")
public class Product extends AbstractBaseEntity implements Serializable {

    @Column(name = "name")
    private String name;

    @OneToOne
    @JoinColumn(name = "supplierId",referencedColumnName = "id")
    private Supplier supplier;

    @Column(name = "countOfProduct")
    private int countOfProduct;

    @Column(name = "price")
    private double price;

    public Product() {
    }


    public Product(Integer id, String name, Supplier supplier, int countOnWarehouse, int price) {
        super(id);
        this.name = name;
        this.supplier = supplier;
        this.countOfProduct = countOnWarehouse;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Supplier getSupplier() {
        return supplier;
    }

    public void setSupplier(Supplier supplier) {
        this.supplier = supplier;
    }

    public int getCountOnWarehouse() {
        return countOfProduct;
    }

    public void setCountOnWarehouse(int countOnWarehouse) {
        this.countOfProduct = countOnWarehouse;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
