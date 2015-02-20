/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.krille.dao;

import com.krille.model.Sensor;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class SensorDAOImpl implements SensorDAO {

    private JdbcTemplate jdbcTemplate;
//    private List<Sensor> sensorList=null;
    public SensorDAOImpl(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public List<Sensor> list() {
        String sql = "SELECT * FROM val order by id desc";
       List<Sensor> sensorList = jdbcTemplate.query(sql, new RowMapper<Sensor>() {
            
            @Override
            public Sensor mapRow(ResultSet rs, int rowNum) throws SQLException {
                Sensor sensor = new Sensor();

                sensor.setFileName(rs.getString("FileName"));
                sensor.setDate(rs.getString("DateInTime"));
                sensor.setTime(rs.getString("TimeOfMesure"));
                sensor.setChannel1(rs.getDouble("Sensor0"));
                sensor.setChannel2(rs.getDouble("Sensor1"));
                sensor.setChannel3(rs.getDouble("Sensor2"));
                sensor.setChannel4(rs.getDouble("Sensor3"));
                sensor.setChannel5(rs.getDouble("Sensor4"));
                sensor.setChannel6(rs.getDouble("Sensor5"));
                sensor.setChannel7(rs.getDouble("Sensor6"));
                sensor.setChannel8(rs.getDouble("Sensor7"));
             
                return sensor;
            }
        });
        
        return sensorList;
    }

    @Override
    public List<Sensor> limitList(int number) {
        String sql = "SELECT * FROM val order by id desc limit "+number;
       List<Sensor> sensorList = jdbcTemplate.query(sql, new RowMapper<Sensor>() {
            
            @Override
            public Sensor mapRow(ResultSet rs, int rowNum) throws SQLException {
                Sensor sensor = new Sensor();

                sensor.setFileName(rs.getString("FileName"));
                sensor.setDate(rs.getString("DateInTime"));
                sensor.setTime(rs.getString("TimeOfMesure"));
                sensor.setChannel1(rs.getDouble("Sensor0"));
                sensor.setChannel2(rs.getDouble("Sensor1"));
                sensor.setChannel3(rs.getDouble("Sensor2"));
                sensor.setChannel4(rs.getDouble("Sensor3"));
                sensor.setChannel5(rs.getDouble("Sensor4"));
                sensor.setChannel6(rs.getDouble("Sensor5"));
                sensor.setChannel7(rs.getDouble("Sensor6"));
                sensor.setChannel8(rs.getDouble("Sensor7"));
             
                return sensor;
            }
        });
        
        return sensorList;
    }

}
