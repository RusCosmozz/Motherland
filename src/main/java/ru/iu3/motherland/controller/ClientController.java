package ru.iu3.motherland.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.iu3.motherland.model.Bill;
import ru.iu3.motherland.model.Client;
import ru.iu3.motherland.service.BillService;
import ru.iu3.motherland.service.ClientService;

import java.util.List;
import java.util.Map;

@Controller
public class ClientController {

    @Autowired
    private ClientService clientService;

    @RequestMapping(value = "/client",method = RequestMethod.GET)
    public ModelAndView allClients() {
        ModelAndView modelAndView = new ModelAndView();
        List<Client> clients=clientService.getAll();
        modelAndView.setViewName("client");
        modelAndView.addObject("clientList", clients);
        return modelAndView;
    }

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public ModelAndView home() {
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("index");
        return modelAndView;
    }





}
