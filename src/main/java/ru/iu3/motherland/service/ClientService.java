package ru.iu3.motherland.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.iu3.motherland.model.Client;
import ru.iu3.motherland.repository.ClientRepository;

@Service
@Transactional
public class ClientService extends AbstractService<Client, ClientRepository> {


    public ClientService(ClientRepository repository) {
        super(repository);
    }
}
