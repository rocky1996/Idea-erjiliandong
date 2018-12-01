package com.acat.dao;

import com.acat.model.City;
import com.acat.model.Province;

import java.util.List;

/**
 * Created by 伍金凡 on 2018/11/28.
 */
public interface IProvinceDao {
    List<Province> findAll();
    Integer findProvinceId(String province);
    List<City> findCityByProvince(int id);
}
