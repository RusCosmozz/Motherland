package ru.iu3.motherland.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.iu3.motherland.model.Product;
import ru.iu3.motherland.repository.ProductRepository;

@Service
public class ProductService extends AbstractService<Product, ProductRepository> {


    public ProductService(ProductRepository repository) {
        super(repository);
    }

    @Transactional
    public Product getProductByMaxPrice() {
        return repository.getProductByMaxPrice();
    }


    @Transactional
    public Product getProductByMinPrice() {
        return repository.getProductByMinPrice();
    }
}
