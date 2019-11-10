package ru.iu3.motherland.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;
import ru.iu3.motherland.model.User;

@Repository
public interface UserRepository extends BaseRepository<User> {

    User findByUsername(String username);

}
