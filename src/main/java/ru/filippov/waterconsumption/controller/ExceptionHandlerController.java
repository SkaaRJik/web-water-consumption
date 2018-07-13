package ru.filippov.waterconsumption.controller;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import ru.filippov.waterconsumption.exception.RestException;



@Controller
public class ExceptionHandlerController {

    private static final Logger LOG = Logger.getLogger(ExceptionHandlerController.class.getName());

    @ExceptionHandler(RestException.class)
    public @ResponseBody
    String handleException(RestException e) {
        LOG.log(Level.ERROR,"Ошибка: " + e.getMessage(), e);
        return "Ошибка: " + e.getMessage();
    }
}
