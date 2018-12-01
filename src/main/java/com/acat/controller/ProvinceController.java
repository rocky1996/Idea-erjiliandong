package com.acat.controller;

import com.acat.model.City;
import com.acat.model.Province;
import com.acat.model.WeatherResponse;
import com.acat.service.IProvinceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by 伍金凡 on 2018/11/28.
 */
@CrossOrigin
@Controller
@RequestMapping("/province")
public class ProvinceController {

    @Autowired
    private IProvinceService provinceService;

    @RequestMapping(value = "getProvinceId.do",method = RequestMethod.POST)
    @ResponseBody
    public List<City> getProvinceId(@RequestBody String province) throws IOException{

        HttpServletRequest request = null;
        HttpServletResponse response = null;

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");

        System.out.println(province);
        int id = provinceService.findProvinceId(province);
        System.out.println("id是="+id);
        List<City> cities = provinceService.findCityByProvince(id);
        System.out.println("大小为="+cities.size());
        System.out.println(cities);
        return cities;
    }

    @RequestMapping(value="getAllProvinces.do",method = RequestMethod.GET)
    @ResponseBody
    public List<Province> getAllProvinces(HttpServletRequest request,HttpServletResponse response) throws IOException{

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        List<Province> list = provinceService.findAll();
        System.out.println(list);
        return list;
    }

    @RequestMapping(value="getWeatherByCityName.do",method = RequestMethod.POST)
    @ResponseBody
    public WeatherResponse getData(HttpServletRequest request,HttpServletResponse response) throws IOException{
        return null;
    }
}
