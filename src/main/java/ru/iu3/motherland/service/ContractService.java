package ru.iu3.motherland.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.iu3.motherland.model.Contract;
import ru.iu3.motherland.repository.ContractRepository;

@Service
@Transactional

public class ContractService extends AbstractService<Contract, ContractRepository> {


    public ContractService(ContractRepository repository) {
        super(repository);
    }
}
