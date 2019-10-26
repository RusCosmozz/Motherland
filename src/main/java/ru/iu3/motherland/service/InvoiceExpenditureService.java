package ru.iu3.motherland.service;

import org.springframework.stereotype.Service;
import ru.iu3.motherland.model.InvoiceExpenditure;
import ru.iu3.motherland.repository.InvoiceExpenditureRepository;

@Service
public class InvoiceExpenditureService extends AbstractService<InvoiceExpenditure, InvoiceExpenditureRepository> {


    public InvoiceExpenditureService(InvoiceExpenditureRepository repository) {
        super(repository);
    }
}
