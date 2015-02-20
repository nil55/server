/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.krille.model;

/**
 *
 * @author krille0x7c2
 */
public class Sensor {

    private String fileName;
    private String date;
    private String time;
    private double channel1;
    private double channel2;
    private double channel3;
    private double channel4;
    private double channel5;
    private double channel6;
    private double channel7;
    private double channel8;
    
    public Sensor(){
    }

    public Sensor(String fileName, String date, String time, double channel1, double channel2, double channel3, double channel4, double channel5, double channel6, double channel7, double channel8) {
    
        this.fileName = fileName;
        this.date = date;
        this.time = time;
        this.channel1 = channel1;
        this.channel2 = channel2;
        this.channel3 = channel3;
        this.channel4 = channel4;
        this.channel5 = channel5;
        this.channel6 = channel6;
        this.channel7 = channel7;
        this.channel8 = channel8;
        
    }

    /**
     * @return the fileName
     */
    public String getFileName() {
        return fileName;
    }

    /**
     * @param fileName the fileName to set
     */
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    /**
     * @return the date
     */
    public String getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(String date) {
        this.date = date;
    }

    /**
     * @return the time
     */
    public String getTime() {
        return time;
    }

    /**
     * @param time the time to set
     */
    public void setTime(String time) {
        this.time = time;
    }

    /**
     * @return the channel1
     */
    public double getChannel1() {
        return channel1;
    }

    /**
     * @param channel1 the channel1 to set
     */
    public void setChannel1(double channel1) {
        this.channel1 = channel1;
    }

    /**
     * @return the channel2
     */
    public double getChannel2() {
        return channel2;
    }

    /**
     * @param channel2 the channel2 to set
     */
    public void setChannel2(double channel2) {
        this.channel2 = channel2;
    }

    /**
     * @return the channel3
     */
    public double getChannel3() {
        return channel3;
    }

    /**
     * @param channel3 the channel3 to set
     */
    public void setChannel3(double channel3) {
        this.channel3 = channel3;
    }

    /**
     * @return the channel4
     */
    public double getChannel4() {
        return channel4;
    }

    /**
     * @param channel4 the channel4 to set
     */
    public void setChannel4(double channel4) {
        this.channel4 = channel4;
    }

    /**
     * @return the channel5
     */
    public double getChannel5() {
        return channel5;
    }

    /**
     * @param channel5 the channel5 to set
     */
    public void setChannel5(double channel5) {
        this.channel5 = channel5;
    }

    /**
     * @return the channel6
     */
    public double getChannel6() {
        return channel6;
    }

    /**
     * @param channel6 the channel6 to set
     */
    public void setChannel6(double channel6) {
        this.channel6 = channel6;
    }

    /**
     * @return the channel7
     */
    public double getChannel7() {
        return channel7;
    }

    /**
     * @param channel7 the channel7 to set
     */
    public void setChannel7(double channel7) {
        this.channel7 = channel7;
    }

    /**
     * @return the channel8
     */
    public double getChannel8() {
        return channel8;
    }

    /**
     * @param channel8 the channel8 to set
     */
    public void setChannel8(double channel8) {
        this.channel8 = channel8;
    }
}
