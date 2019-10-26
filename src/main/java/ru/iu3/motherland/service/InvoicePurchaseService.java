package ru.iu3.motherland.service;

import org.springframework.stereotype.Service;
import ru.iu3.motherland.model.InvoicePurchase;
import ru.iu3.motherland.repository.InvoicePurchaseRepository;

@Service
public class InvoicePurchaseService extends AbstractService<InvoicePurchase, InvoicePurchaseRepository> {


    public InvoicePurchaseService(InvoicePurchaseRepository repository) {
        super(repository);
    }
}
