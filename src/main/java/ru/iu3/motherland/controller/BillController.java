package ru.iu3.motherland.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import ru.iu3.motherland.model.Bill;
import ru.iu3.motherland.model.Client;
import ru.iu3.motherland.service.BillService;

import java.util.List;
import java.util.Map;

@Controller
public class BillController {


    private BillService billService;

    @Autowired
    public void setBillService(BillService billService) {
        this.billService = billService;
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
        return "addBill";
    }





}
