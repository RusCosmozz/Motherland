package ru.iu3.motherland.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.iu3.motherland.model.AbstractBaseEntity;
import ru.iu3.motherland.repository.BaseRepository;

import java.util.List;

@Service
public abstract class AbstractService<E extends AbstractBaseEntity,R extends BaseRepository<E>> implements BaseService<E> {

    protected  R repository;

    @Autowired
    public AbstractService(R repository) {
        this.repository = repository;
    }

    @Override
    @Transactional
    public E add(E e) {
        return repository.save(e);
    }

    @Override
    @Transactional
    public void delete(int id) {
        repository.deleteById(id);
    }

    @Override
    public E getById(int id) {
        return repository.getById(id);
    }

    @Override
    @Transactional
    public E edit(E e) {
        return repository.save(e);
    }

    @Override
    @Transactional
    public List<E> getAll() {
        return (List<E>) repository.findAll();
    }
}
