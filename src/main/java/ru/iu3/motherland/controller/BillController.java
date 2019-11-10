package ru.iu3.motherland.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import ru.iu3.motherland.model.Bill;
import ru.iu3.motherland.service.BillService;
import ru.iu3.motherland.service.ClientService;
import ru.iu3.motherland.service.ProductService;

import java.util.List;
import java.util.Map;

@Controller
public class BillController {


    private BillService billService;

    private ClientService clientService;

    private ProductService productService;

    @Autowired
    public void setBillService(BillService billService) {
        this.billService = billService;
    }

    @Autowired
    public void setClientService(ClientService clientService) {
        this.clientService = clientService;
    }

    @Autowired
    public void setProductService(ProductService productService) {
        this.productService = productService;
    }

    @RequestMapping(value = "/bill",method = RequestMethod.GET)
    public ModelAndView allBill() {
        ModelAndView modelAndView = new ModelAndView();
        List<Bill> bills= billService.getAll();
        modelAndView.setViewName("bill");
        modelAndView.addObject("billList", bills);
        return modelAndView;
    }

    @RequestMapping(value = "/editBill",method = RequestMethod.GET)
    public ModelAndView editPage(@RequestParam int id){
        ModelAndView modelAndView= new ModelAndView();
        modelAndView.setViewName("editBill");
        modelAndView.addObject("bill", billService.getById(id));
        modelAndView.addObject("clients",clientService.getAll());
        modelAndView.addObject("products",productService.getAll());
        return modelAndView;
    }

    @RequestMapping(value ="/saveBill", method =RequestMethod.POST)
    public String save(@ModelAttribute("bill") Bill bill){
        billService.edit(bill);
        return "redirect:/bill";
    }

    @RequestMapping("/deleteBill")
    public String deleteBillForm(@RequestParam int id) {
        billService.delete(id);
        return "redirect:/client";
    }

    @RequestMapping("/addBill")
    public String newBillForm(Map<String, Object> model) {
        Bill bill = new Bill();
        model.put("bill", bill);
        model.put("clients",clientService.getAll());
        model.put("products",productService.getAll());
        return "addBill";
    }





}
