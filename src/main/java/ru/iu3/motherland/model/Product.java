package ru.iu3.motherland.model;

import javax.persistence.*;


//Класс Товар
@Entity
@Table(name = "product")
public class Product extends AbstractBaseEntity {

    @Column(name = "name")
    private String name;

    @OneToOne
    @MapsId
    @JoinColumn(name = "supplierId")
    private Supplier supplier;

    @Column(name = "countOfProduct")
    private int countOfProduct;

    @Column(name = "price")
    private int price;

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

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
