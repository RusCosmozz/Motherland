package ru.iu3.motherland.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import ru.iu3.motherland.model.InvoicePurchase;
import ru.iu3.motherland.service.InvoicePurchaseService;
import ru.iu3.motherland.service.ProductService;
import ru.iu3.motherland.service.SupplierService;
import ru.iu3.motherland.service.TransportCompanyService;

import java.util.List;
import java.util.Map;

@Controller
public class InvoicePurchaseController {


    private InvoicePurchaseService invoicePurchaseService;

    private SupplierService supplierService;

    private TransportCompanyService transportCompanyService;

    private ProductService productService;

    @Autowired
    public void setSupplierService(SupplierService supplierService) {
        this.supplierService = supplierService;
    }

    @Autowired
    public void setTransportCompanyService(TransportCompanyService transportCompanyService) {
        this.transportCompanyService = transportCompanyService;
    }

    @Autowired
    public void setProductService(ProductService productService) {
        this.productService = productService;
    }

    @Autowired
    public void setInvoicePurchaseService(InvoicePurchaseService invoicePurchaseService) {
        this.invoicePurchaseService = invoicePurchaseService;
    }

    @RequestMapping(value = "/invoicePurchase",method = RequestMethod.GET)
    public ModelAndView allClients() {
        ModelAndView modelAndView = new ModelAndView();
        List<InvoicePurchase> invoicePurchases= invoicePurchaseService.getAll();
        modelAndView.setViewName("invoicePurchase");
        modelAndView.addObject("invoicePurchaseList", invoicePurchases);
        return modelAndView;
    }

    @RequestMapping(value = "/editInvoicePurchase",method = RequestMethod.GET)
    public ModelAndView editPage(@RequestParam int id){
        ModelAndView modelAndView= new ModelAndView();
        modelAndView.setViewName("editInvoicePurchase");
        modelAndView.addObject("invoicePurchase", invoicePurchaseService.getById(id));
        modelAndView.addObject("products",productService.getAll());
        modelAndView.addObject("transportCompanies",transportCompanyService.getAll());
        modelAndView.addObject("suppliers",supplierService.getAll());
        return modelAndView;
    }

    @RequestMapping(value = "/saveInvoicePurchase", method =RequestMethod.POST)
    public String save(@ModelAttribute("invoicePurchase") InvoicePurchase invoicePurchase){
        invoicePurchaseService.edit(invoicePurchase);
        return "redirect:/invoicePurchase";
    }

    @RequestMapping("/deleteInvoicePurchase")
    public String deleteCustomerForm(@RequestParam int id) {
        invoicePurchaseService.delete(id);
        return "redirect:/invoicePurchase";
    }

    @RequestMapping("/addInvoicePurchase")
    public String newCustomerForm(Map<String, Object> model) {
        InvoicePurchase invoicePurchase = new InvoicePurchase();
        model.put("invoicePurchase", invoicePurchase);
        model.put("products",productService.getAll());
        model.put("transportCompanies",transportCompanyService.getAll());
        model.put("suppliers",supplierService.getAll());
        return "addInvoicePurchase";
    }
}
