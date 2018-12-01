package com.acat.model;

import java.io.Serializable;
import java.util.List;

/**
 * Created by 伍金凡 on 2018/11/30.
 */
public class Weather implements Serializable{

    private static final long serialVersionUID = 1L;


    /**
     * {"data":{"yesterday":{"date":"30日星期五","high":"高温 11℃","fx":"西南风","low":"低温 3℃","fl":"<![CDATA[<3级]]>","type":"霾"},"city":"西安","aqi":"292","forecast":[{"date":"1日星期六","high":"高温 12℃","fengli":"<![CDATA[<3级]]>","low":"低温 2℃","fengxiang":"东北风","type":"霾"},{"date":"2日星期天","high":"高温 13℃","fengli":"<![CDATA[<3级]]>","low":"低温 3℃","fengxiang":"西南风","type":"阴"},{"date":"3日星期一","high":"高温 9℃","fengli":"<![CDATA[<3级]]>","low":"低温 0℃","fengxiang":"东北风","type":"阴"},{"date":"4日星期二","high":"高温 7℃","fengli":"<![CDATA[<3级]]>","low":"低温 0℃","fengxiang":"东北风","type":"多云"},{"date":"5日星期三","high":"高温 8℃","fengli":"<![CDATA[<3级]]>","low":"低温 -3℃","fengxiang":"南风","type":"阴"}],"ganmao":"昼夜温差较大，较易发生感冒，请适当增减衣服。体质较弱的朋友请注意防护。","wendu":"8"},"status":1000,"desc":"OK"}
     */

    private String city;
    private String aqi;
    private String ganmao;
    private String wendu;
    private Yesterday yesterday;//昨日天气
    private List<Forecast> forecast;//未来天气

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAqi() {
        return aqi;
    }

    public void setAqi(String aqi) {
        this.aqi = aqi;
    }

    public String getGanmao() {
        return ganmao;
    }

    public void setGanmao(String ganmao) {
        this.ganmao = ganmao;
    }

    public String getWendu() {
        return wendu;
    }

    public void setWendu(String wendu) {
        this.wendu = wendu;
    }

    public Yesterday getYesterday() {
        return yesterday;
    }

    public void setYesterday(Yesterday yesterday) {
        this.yesterday = yesterday;
    }

    public List<Forecast> getForecast() {
        return forecast;
    }

    public void setForecast(List<Forecast> forecast) {
        this.forecast = forecast;
    }
}
