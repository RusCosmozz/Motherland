package ru.iu3.motherland.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.iu3.motherland.model.Bill;
import ru.iu3.motherland.model.Client;
import ru.iu3.motherland.service.BillService;
import ru.iu3.motherland.service.ClientService;

import java.util.List;
import java.util.Map;
import java.util.Optional;

@Controller

public class ClientController {


    private ClientService clientService;

    @Autowired
    public void setClientService(ClientService clientService) {
        this.clientService = clientService;
    }

    @RequestMapping(value = "/client",method = RequestMethod.GET)
    public ModelAndView allClients() {
        ModelAndView modelAndView = new ModelAndView();
        List<Client> clients=clientService.getAll();
        modelAndView.setViewName("client");
        modelAndView.addObject("clientList", clients);
        return modelAndView;
    }

    @RequestMapping(value = "/editClient",method = RequestMethod.GET)
    public ModelAndView editPage(@RequestParam int id){
        ModelAndView modelAndView= new ModelAndView();
        modelAndView.setViewName("editClient");
        modelAndView.addObject("client", clientService.getById(id));
        return modelAndView;
    }

    @RequestMapping(value = "/saveClient", method =RequestMethod.POST)
    public String save(@ModelAttribute("client") Client client){
        clientService.edit(client);
        return "redirect:/client";
    }

    @RequestMapping("/deleteClient")
    public String deleteCustomerForm(@RequestParam int id) {
        clientService.delete(id);
        return "redirect:/client";
    }

    @RequestMapping("/addClient")
    public String newCustomerForm(Map<String, Object> model) {
        Client client = new Client();
        model.put("client", client);
        return "addClient";
    }

    //TODO сделать общий начальный контроллер
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public ModelAndView home() {
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("index");
        return modelAndView;
    }





}
