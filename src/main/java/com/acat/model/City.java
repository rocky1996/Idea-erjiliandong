package com.acat.model;

import java.io.Serializable;

/**
 * Created by 伍金凡 on 2018/11/28.
 */
public class City implements Serializable{
    private static final long serialVersionUID = 1L;

    private int id;
    private String city;
    private int city_id;
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getCity() {
        return city;
    }
    public void setCity(String city) {
        this.city = city;
    }
    public int getCity_id() {
        return city_id;
    }
    public void setCity_id(int city_id) {
        this.city_id = city_id;
    }
}
