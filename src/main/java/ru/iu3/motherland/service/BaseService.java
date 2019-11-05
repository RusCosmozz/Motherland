package ru.iu3.motherland.service;

import ru.iu3.motherland.model.AbstractBaseEntity;

import java.util.List;
import java.util.Optional;


public interface BaseService<E extends AbstractBaseEntity> {

     E add(E e);

     void delete(int id);

     E getById(int id);

     E edit(E e);

     List<E> getAll();

}
