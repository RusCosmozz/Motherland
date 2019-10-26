package ru.iu3.motherland.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.NoRepositoryBean;
import org.springframework.stereotype.Repository;
import ru.iu3.motherland.model.AbstractBaseEntity;

@NoRepositoryBean
public interface BaseRepository<E extends AbstractBaseEntity> extends CrudRepository<E,Integer> {
}
