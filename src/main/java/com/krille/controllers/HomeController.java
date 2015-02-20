/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.krille.controllers;

import com.krille.dao.SensorDAO;
import com.krille.model.Sensor;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author krille0x7c2
 */
@Controller
public class HomeController {

    @Autowired
    private SensorDAO sensorDAO;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView listSensors(ModelAndView model) {
        List<Sensor> listSensor = sensorDAO.list();
        model.addObject("listSensors", listSensor);
        model.setViewName("home");
        return model;
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)//Map to same page as above
    public ModelAndView update(@RequestParam("value") Integer value) {
        List<Sensor> listSensor = sensorDAO.limitList(value);
        ModelAndView model = new ModelAndView("home");
        model.addObject("listSensors", listSensor);
        model.setViewName("home");

        return model;

    }

}
