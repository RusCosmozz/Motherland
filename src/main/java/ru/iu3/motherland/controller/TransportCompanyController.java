package ru.iu3.motherland.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import ru.iu3.motherland.model.TransportCompany;
import ru.iu3.motherland.service.TransportCompanyService;

import java.util.List;
import java.util.Map;

@Controller
public class TransportCompanyController {

    private TransportCompanyService transportCompanyService;

    @Autowired
    public void setTransportCompanyService(TransportCompanyService transportCompanyService) {
        this.transportCompanyService = transportCompanyService;
    }

    @RequestMapping(value = "/transportCompany",method = RequestMethod.GET)
    public ModelAndView allClients() {
        ModelAndView modelAndView = new ModelAndView();
        List<TransportCompany> transportCompanies= transportCompanyService.getAll();
        modelAndView.setViewName("transportCompany");
        modelAndView.addObject("transportCompanyList", transportCompanies);
        return modelAndView;
    }

    @RequestMapping(value = "/editTransportCompany",method = RequestMethod.GET)
    public ModelAndView editPage(@RequestParam int id){
        ModelAndView modelAndView= new ModelAndView();
        modelAndView.setViewName("editTransportCompany");
        modelAndView.addObject("transportCompany", transportCompanyService.getById(id));
        return modelAndView;
    }

    @RequestMapping(value = "/saveTransportCompany", method =RequestMethod.POST)
    public String save(@ModelAttribute("transportCompany") TransportCompany transportCompany){
        transportCompanyService.edit(transportCompany);
        return "redirect:/transportCompany";
    }

    @RequestMapping("/deleteTransportCompany")
    public String deleteCustomerForm(@RequestParam int id) {
        transportCompanyService.delete(id);
        return "redirect:/transportCompany";
    }

    @RequestMapping("/addTransportCompany")
    public String newCustomerForm(Map<String, Object> model) {
        TransportCompany transportCompany = new TransportCompany();
        model.put("transportCompany", transportCompany);
        return "addTransportCompany";
    }
}
