package ru.iu3.motherland.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import ru.iu3.motherland.model.Contract;
import ru.iu3.motherland.service.ContractService;

import java.util.List;
import java.util.Map;

@Controller
public class ContractController {

    private ContractService contractService;

    @Autowired
    public void setContractService(ContractService contractService) {
        this.contractService = contractService;
    }

    @RequestMapping(value = "/contract",method = RequestMethod.GET)
    public ModelAndView allContract() {
        ModelAndView modelAndView = new ModelAndView();
        List<Contract> contracts=contractService.getAll();
        modelAndView.setViewName("contract");
        modelAndView.addObject("contractList", contracts);
        return modelAndView;
    }

    @RequestMapping(value = "/editContract",method = RequestMethod.GET)
    public ModelAndView editPage(@RequestParam int id){
        ModelAndView modelAndView= new ModelAndView();
        modelAndView.setViewName("editContract");
        modelAndView.addObject("contract", contractService.getById(id));
        return modelAndView;
    }

    @RequestMapping(value = "/saveContract", method =RequestMethod.POST)
    public String save(@ModelAttribute("contract") Contract contract){
        contractService.edit(contract);
        return "redirect:/contract";
    }

    @RequestMapping("/deleteContract")
    public String deleteCustomerForm(@RequestParam int id) {
        contractService.delete(id);
        return "redirect:/contract";
    }

    @RequestMapping("/addContract")
    public String newCustomerForm(Map<String, Object> model) {
        Contract contract = new Contract();
        model.put("contract", contract);
        return "addContract";
    }
}
