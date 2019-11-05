package ru.iu3.motherland.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import ru.iu3.motherland.model.Client;
import ru.iu3.motherland.model.Supplier;
import ru.iu3.motherland.service.SupplierService;

import java.util.List;
import java.util.Map;

@Controller
public class SupplierController {

    private SupplierService supplierService;

    @Autowired
    public void setSupplierService(SupplierService supplierService) {
        this.supplierService = supplierService;
    }

    @RequestMapping(value = "/supplier",method = RequestMethod.GET)
    public ModelAndView allClients() {
        ModelAndView modelAndView = new ModelAndView();
        List<Supplier> suppliers= supplierService.getAll();
        modelAndView.setViewName("supplier");
        modelAndView.addObject("supplierList", suppliers);
        return modelAndView;
    }

    @RequestMapping(value = "/editSupplier",method = RequestMethod.GET)
    public ModelAndView editPage(@RequestParam int id){
        ModelAndView modelAndView= new ModelAndView();
        modelAndView.setViewName("editSupplier");
        modelAndView.addObject("supplier", supplierService.getById(id));
        return modelAndView;
    }

    @RequestMapping(value = "/saveSupplier", method =RequestMethod.POST)
    public String save(@ModelAttribute("supplier") Supplier supplier){
        supplierService.edit(supplier);
        return "redirect:/supplier";
    }

    @RequestMapping("/deleteSupplier")
    public String deleteCustomerForm(@RequestParam int id) {
        supplierService.delete(id);
        return "redirect:/supplier";
    }

    @RequestMapping("/addSupplier")
    public String newCustomerForm(Map<String, Object> model) {
        Supplier supplier = new Supplier();
        model.put("supplier", supplier);
        return "addSupplier";
    }
}
