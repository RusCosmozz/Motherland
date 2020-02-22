package ru.iu3.motherland.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import ru.iu3.motherland.model.Product;

@Repository
public interface ProductRepository  extends BaseRepository<Product> {

  //Поиск самого дорого товара
  @Query("from Product where price = (select max (price) from Product )")
  Product getProductByMaxPrice();

  //Поиск самого дешевого товара
  @Query("from Product where price = (select min (price) from Product )")
  Product getProductByMinPrice();
}
