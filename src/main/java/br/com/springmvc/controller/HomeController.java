package br.com.springmvc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;


/**
 * Handles requests for the application user page.
 */
@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @RequestMapping(value = {"/", "/index"})
    public ModelAndView mainPage() {
        return new ModelAndView("homepage");
    }

    @RequestMapping(value = "/tiles")
    public ModelAndView tilesPage() {
        return new ModelAndView("home/index", "serverTime", new Date());
    }

    @RequestMapping(value = "/about")
    public ModelAndView aboutPage() {
        return new ModelAndView("home/about");
    }

}