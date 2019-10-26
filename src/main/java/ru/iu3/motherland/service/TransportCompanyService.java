package ru.iu3.motherland.service;

import org.springframework.stereotype.Service;
import ru.iu3.motherland.model.TransportCompany;
import ru.iu3.motherland.repository.TransportCompanyRepository;

@Service
public class TransportCompanyService extends AbstractService<TransportCompany, TransportCompanyRepository> {


    public TransportCompanyService(TransportCompanyRepository repository) {
        super(repository);
    }
}
