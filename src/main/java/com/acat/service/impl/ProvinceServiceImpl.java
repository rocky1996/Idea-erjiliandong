package com.acat.service.impl;

import com.acat.dao.IProvinceDao;
import com.acat.model.City;
import com.acat.model.Province;
import com.acat.service.IProvinceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 伍金凡 on 2018/11/28.
 */
@Service("provinceService")
public class ProvinceServiceImpl implements IProvinceService {

    @Autowired
    private IProvinceDao provinceDao;

    public Integer findProvinceId(String province){
        return provinceDao.findProvinceId(province);
    }

    public List<City> findCityByProvince(int id){
        return provinceDao.findCityByProvince(id);
    }

    public List<Province> findAll(){
        return provinceDao.findAll();
    }
}
