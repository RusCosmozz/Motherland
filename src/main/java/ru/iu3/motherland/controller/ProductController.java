package ru.iu3.motherland.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import ru.iu3.motherland.model.Client;
import ru.iu3.motherland.model.Product;
import ru.iu3.motherland.service.ProductService;
import ru.iu3.motherland.service.SupplierService;

import java.util.List;
import java.util.Map;

@Controller
public class ProductController {


    private ProductService productService;

    private SupplierService supplierService;

    @Autowired
    public void setSupplierService(SupplierService supplierService) {
        this.supplierService = supplierService;
    }

    @Autowired
    public void setProductService(ProductService productService) {
        this.productService = productService;
    }

    @RequestMapping(value = "/product",method = RequestMethod.GET)
    public ModelAndView allClients() {
        ModelAndView modelAndView = new ModelAndView();
        List<Product> products= productService.getAll();
        modelAndView.setViewName("product");
        modelAndView.addObject("productList", products);
        return modelAndView;
    }

    @RequestMapping(value = "/editProduct",method = RequestMethod.GET)
    public ModelAndView editPage(@RequestParam int id){
        ModelAndView modelAndView= new ModelAndView();
        modelAndView.setViewName("editProduct");
        modelAndView.addObject("product", productService.getById(id));
        modelAndView.addObject("suppliers",supplierService.getAll());
        return modelAndView;
    }

    @RequestMapping(value = "/saveProduct", method =RequestMethod.POST)
    public String save(@ModelAttribute("product") Product product){
        productService.edit(product);
        return "redirect:/product";
    }

    @RequestMapping("/deleteProduct")
    public String deleteCustomerForm(@RequestParam int id) {
        productService.delete(id);
        return "redirect:/product";
    }

    @RequestMapping("/addProduct")
    public String newCustomerForm(Map<String, Object> model) {
        Product product = new Product();
        model.put("product", product);
        model.put("suppliers",supplierService.getAll());
        return "addProduct";
    }

}
