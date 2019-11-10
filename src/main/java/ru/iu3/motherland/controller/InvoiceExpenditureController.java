package ru.iu3.motherland.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import ru.iu3.motherland.model.InvoiceExpenditure;
import ru.iu3.motherland.service.BillService;
import ru.iu3.motherland.service.ClientService;
import ru.iu3.motherland.service.InvoiceExpenditureService;
import ru.iu3.motherland.service.ProductService;

import java.util.List;
import java.util.Map;

@Controller
public class InvoiceExpenditureController {


    private InvoiceExpenditureService invoiceExpenditureService;

    private ClientService clientService;

    private ProductService productService;

    private BillService billService;

    @Autowired
    public void setClientService(ClientService clientService) {
        this.clientService = clientService;
    }

    @Autowired
    public void setProductService(ProductService productService) {
        this.productService = productService;
    }

    @Autowired
    public void setBillService(BillService billService) {
        this.billService = billService;
    }

    @Autowired
    public void setInvoiceExpenditureService(InvoiceExpenditureService invoiceExpenditureService) {
        this.invoiceExpenditureService = invoiceExpenditureService;
    }

    @RequestMapping(value = "/invoiceExpenditure",method = RequestMethod.GET)
    public ModelAndView allInvoices() {
        ModelAndView modelAndView = new ModelAndView();
        List<InvoiceExpenditure> invoiceExpenditures= invoiceExpenditureService.getAll();
        modelAndView.setViewName("invoiceExpenditure");
        modelAndView.addObject("invoiceExpenditureList", invoiceExpenditures);
        modelAndView.addObject("clients",clientService.getAll());
        modelAndView.addObject("products",productService.getAll());
        modelAndView.addObject("bills",billService.getAll());
        return modelAndView;
    }

    @RequestMapping(value = "/editInvoiceExpenditure",method = RequestMethod.GET)
    public ModelAndView editPage(@RequestParam int id){
        ModelAndView modelAndView= new ModelAndView();
        modelAndView.setViewName("editInvoiceExpenditure");
        modelAndView.addObject("invoiceExpenditure", invoiceExpenditureService.getById(id));
        modelAndView.addObject("clients",clientService.getAll());
        modelAndView.addObject("products",productService.getAll());
        modelAndView.addObject("bills",billService.getAll());
        return modelAndView;
    }

    @RequestMapping(value = "/saveInvoiceExpenditure", method =RequestMethod.POST)
    public String save(@ModelAttribute("invoiceExpenditure") InvoiceExpenditure invoiceExpenditure){
        invoiceExpenditureService.edit(invoiceExpenditure);
        return "redirect:/invoiceExpenditure";
    }

    @RequestMapping("/deleteInvoiceExpenditure")
    public String delete(@RequestParam int id) {
        invoiceExpenditureService.delete(id);
        return "redirect:/invoiceExpenditure";
    }

    @RequestMapping("/addInvoiceExpenditure")
    public String newInvoice(Map<String, Object> model) {
        InvoiceExpenditure invoiceExpenditure = new InvoiceExpenditure();
        model.put("invoiceExpenditure", invoiceExpenditure);
        model.put("clients",clientService.getAll());
        model.put("products",productService.getAll());
        model.put("bills",billService.getAll());
        return "addInvoiceExpenditure";
    }
}
