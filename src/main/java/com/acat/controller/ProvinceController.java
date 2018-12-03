package com.acat.controller;

import com.acat.model.City;
import com.acat.model.Province;
import com.acat.model.WeatherResponse;
import com.acat.service.IProvinceService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

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

    public static final String WEATHER_URI = "http://wthrcdn.etouch.cn/weather_mini?";

    @Autowired
    private IProvinceService provinceService;

    @RequestMapping(value = "getProvinceId.do",method = RequestMethod.POST)
    @ResponseBody
    public List<City> getProvinceId(HttpServletRequest request,HttpServletResponse response) throws IOException{

        String province = request.getParameter("province");

        System.out.println(province);

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");

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
    public WeatherResponse getWeatherByCityName(HttpServletRequest request,HttpServletResponse response) throws IOException{

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");

        String city = request.getParameter("city");

        System.out.println(city);

        String uri = WEATHER_URI + "city=" + city;

        System.out.println(uri);

        WeatherResponse resp = doGetWeather(uri);
        System.out.println(resp);
        return resp;
    }

    private WeatherResponse doGetWeather(String uri){

        RestTemplate restTemplate = new RestTemplate();

        ResponseEntity<String> respString = restTemplate.getForEntity(uri,String.class);
        ObjectMapper mapper = new ObjectMapper();
        WeatherResponse resp = null;
        String strBody = null;

        if(respString.getStatusCodeValue() == 200){
            strBody = respString.getBody();
        }

        try{
            resp = mapper.readValue(strBody, WeatherResponse.class);
        }catch (IOException e) {
            e.printStackTrace();
        }
        return resp;
    }
}
