package ru.iu3.motherland.service;

import org.springframework.stereotype.Service;
import ru.iu3.motherland.model.Supplier;
import ru.iu3.motherland.repository.SupplierRepository;

@Service
public class SupplierService extends AbstractService<Supplier, SupplierRepository> {


    public SupplierService(SupplierRepository repository) {
        super(repository);
    }
}
