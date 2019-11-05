package ru.iu3.motherland.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import ru.iu3.motherland.model.InvoiceExpenditure;
import ru.iu3.motherland.model.InvoicePurchase;
import ru.iu3.motherland.service.InvoiceExpenditureService;

import java.util.List;
import java.util.Map;

@Controller
public class InvoiceExpenditureController {


    private InvoiceExpenditureService invoiceExpenditureService;

    @Autowired
    public void setInvoiceExpenditureService(InvoiceExpenditureService invoiceExpenditureService) {
        this.invoiceExpenditureService = invoiceExpenditureService;
    }

    @RequestMapping(value = "/invoiceExpenditure",method = RequestMethod.GET)
    public ModelAndView allClients() {
        ModelAndView modelAndView = new ModelAndView();
        List<InvoiceExpenditure> invoiceExpenditures= invoiceExpenditureService.getAll();
        modelAndView.setViewName("invoiceExpenditure");
        modelAndView.addObject("invoiceExpenditureList", invoiceExpenditures);
        return modelAndView;
    }

    @RequestMapping(value = "/editInvoiceExpenditure",method = RequestMethod.GET)
    public ModelAndView editPage(@RequestParam int id){
        ModelAndView modelAndView= new ModelAndView();
        modelAndView.setViewName("editInvoiceExpenditure");
        modelAndView.addObject("invoiceExpenditure", invoiceExpenditureService.getById(id));
        return modelAndView;
    }

    @RequestMapping(value = "/saveInvoiceExpenditure", method =RequestMethod.POST)
    public String save(@ModelAttribute("invoiceExpenditure") InvoiceExpenditure invoiceExpenditure){
        invoiceExpenditureService.edit(invoiceExpenditure);
        return "redirect:/invoiceExpenditure";
    }

    @RequestMapping("/deleteInvoiceExpenditure")
    public String deleteCustomerForm(@RequestParam int id) {
        invoiceExpenditureService.delete(id);
        return "redirect:/invoiceExpenditure";
    }

    @RequestMapping("/addInvoiceExpenditure")
    public String newCustomerForm(Map<String, Object> model) {
        InvoiceExpenditure invoiceExpenditure = new InvoiceExpenditure();
        model.put("invoiceExpenditure", invoiceExpenditure);
        return "addInvoiceExpenditure";
    }
}
