package com.acat.model;

import java.io.Serializable;

/**
 * Created by 伍金凡 on 2018/11/30.
 */
public class Yesterday implements Serializable{

    private static final long serialVersionUID = 1L;

    /**
     * {"data":{"yesterday":{"date":"30日星期五","high":"高温 11℃","fx":"西南风","low":"低温 3℃","fl":"<![CDATA[<3级]]>","type":"霾"},"city":"西安","aqi":"292","forecast":[{"date":"1日星期六","high":"高温 12℃","fengli":"<![CDATA[<3级]]>","low":"低温 2℃","fengxiang":"东北风","type":"霾"},{"date":"2日星期天","high":"高温 13℃","fengli":"<![CDATA[<3级]]>","low":"低温 3℃","fengxiang":"西南风","type":"阴"},{"date":"3日星期一","high":"高温 9℃","fengli":"<![CDATA[<3级]]>","low":"低温 0℃","fengxiang":"东北风","type":"阴"},{"date":"4日星期二","high":"高温 7℃","fengli":"<![CDATA[<3级]]>","low":"低温 0℃","fengxiang":"东北风","type":"多云"},{"date":"5日星期三","high":"高温 8℃","fengli":"<![CDATA[<3级]]>","low":"低温 -3℃","fengxiang":"南风","type":"阴"}],"ganmao":"昼夜温差较大，较易发生感冒，请适当增减衣服。体质较弱的朋友请注意防护。","wendu":"8"},"status":1000,"desc":"OK"}
     */

    private String date;
    private String high;
    private String fx;
    private String low;
    private String fl;
    private String type;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getHigh() {
        return high;
    }

    public void setHigh(String high) {
        this.high = high;
    }

    public String getFx() {
        return fx;
    }

    public void setFx(String fx) {
        this.fx = fx;
    }

    public String getLow() {
        return low;
    }

    public void setLow(String low) {
        this.low = low;
    }

    public String getFl() {
        return fl;
    }

    public void setFl(String fl) {
        this.fl = fl;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
