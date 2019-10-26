package ru.iu3.motherland.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import ru.iu3.motherland.model.Product;

@Repository
public interface ProductRepository  extends BaseRepository<Product> {

 /* @Query("from product where p.price = (select max (price) from product )")
  Product getProductByMaxPrice();

  @Query("from product where price = (select min (price) from product )")
  Product getProductByMinPrice();*/
}
