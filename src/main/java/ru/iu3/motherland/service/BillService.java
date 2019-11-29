package ru.iu3.motherland.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.iu3.motherland.model.Bill;
import ru.iu3.motherland.repository.BillRepository;

@Service
public class BillService extends AbstractService<Bill, BillRepository>  {

    public BillService(BillRepository repository) {
        super(repository);
    }

}
