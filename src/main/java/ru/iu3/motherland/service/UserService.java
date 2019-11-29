package ru.iu3.motherland.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.iu3.motherland.model.User;
import ru.iu3.motherland.repository.UserRepository;

@Service
public class UserService extends AbstractService<User, UserRepository> {

    public UserService(UserRepository repository) {
        super(repository);
    }

    @Transactional
    public User findByUsername(String username){
        return repository.findByUsername(username);
    }


}
