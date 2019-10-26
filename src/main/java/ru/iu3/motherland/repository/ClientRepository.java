package ru.iu3.motherland.repository;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ru.iu3.motherland.model.Client;

@Repository
@Transactional
public interface ClientRepository extends BaseRepository<Client> {
}
