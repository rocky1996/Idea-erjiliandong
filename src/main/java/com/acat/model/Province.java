package com.acat.model;

import java.io.Serializable;

/**
 * Created by 伍金凡 on 2018/11/28.
 */
public class Province implements Serializable{

    private static final long serialVersionUID = 1L;

    private int id;
    private String province;
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getProvince() {
        return province;
    }
    public void setProvince(String province) {
        this.province = province;
    }

}
