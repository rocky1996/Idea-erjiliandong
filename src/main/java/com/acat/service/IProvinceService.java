package com.acat.service;

import com.acat.model.City;
import com.acat.model.Province;

import java.util.List;

/**
 * Created by 伍金凡 on 2018/11/28.
 */
public interface IProvinceService {
    Integer findProvinceId(String province);
    List<City> findCityByProvince(int id);
    List<Province> findAll();
}
