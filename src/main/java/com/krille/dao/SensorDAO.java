/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.krille.dao;

import com.krille.model.Sensor;
import java.util.List;

/**
 *
 * @author krille0x7c2
 */
public interface SensorDAO {
    public List<Sensor> list();
    public List<Sensor> limitList(int number);
    
}
