package ru.filippov.waterconsumption.controller;


import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
    private static final Logger logger = Logger.getLogger(PageController.class.getName());

    @RequestMapping("/hello")
    public String showHelloWorld() {
        return "hello-world";
    }



}
