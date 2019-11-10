package ru.iu3.motherland.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import ru.iu3.motherland.model.Bill;
import ru.iu3.motherland.model.User;
import ru.iu3.motherland.service.UserService;

import java.util.List;
import java.util.Map;

@Controller
public class UserController {
    private UserService userService;

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public ModelAndView allBill() {
        ModelAndView modelAndView = new ModelAndView();
        List<User> users= userService.getAll();
        modelAndView.setViewName("login");
        modelAndView.addObject("userList", users);
        return modelAndView;
    }

    @RequestMapping(value = "/password",method = RequestMethod.GET)
    public ModelAndView passwordCheck(@RequestParam int id){
        ModelAndView modelAndView= new ModelAndView();
        modelAndView.setViewName("checkPassword");
        modelAndView.addObject("user",userService.getById(id));
        return modelAndView;
    }

    @RequestMapping(value = "/checkPassword",method = RequestMethod.POST)
    public String password(@ModelAttribute("user") User user,String password,Map<String, Object> model) {
        if(userService.findByUsername(user.getUsername()).getPassword().equals(password)){
            switch (user.getUsername()){
                case "director":
                    return "directorPages";
                case "sales manager":
                    return "salesPages";
                case"distrib. manager":
                    return "distributionPages";
            }
        }
        return "redirect:/login";
    }

    @RequestMapping(value = "/editUser",method = RequestMethod.GET)
    public ModelAndView editPage(@RequestParam int id){
        ModelAndView modelAndView= new ModelAndView();
        modelAndView.setViewName("editUser");
        modelAndView.addObject("user", userService.getById(id));
        return modelAndView;
    }

    @RequestMapping(value ="/saveUser", method =RequestMethod.POST)
    public String save(@ModelAttribute("bill") User user){
        userService.edit(user);
        return "redirect:/login";
    }

}
