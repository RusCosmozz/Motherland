package ru.iu3.motherland.service;

import org.springframework.stereotype.Service;
import ru.iu3.motherland.model.Client;
import ru.iu3.motherland.repository.ClientRepository;

@Service
public class ClientService extends AbstractService<Client, ClientRepository> {


    public ClientService(ClientRepository repository) {
        super(repository);
    }
}
