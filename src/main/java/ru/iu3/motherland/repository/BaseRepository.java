package ru.iu3.motherland.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.NoRepositoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ru.iu3.motherland.model.AbstractBaseEntity;

import java.util.Optional;

@NoRepositoryBean
@Transactional

public interface BaseRepository<E extends AbstractBaseEntity> extends CrudRepository<E,Integer> {

    E getById(Integer integer);
}
