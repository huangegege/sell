package com.huanliu.utils;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

/**
 * Created by liuhuan on 2017/10/14.
 */
public class JsonUtil {

    public static String toJson(Object object) {
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.setPrettyPrinting();
        Gson gson = gsonBuilder.create();
        return gson.toJson(object);
    }
}
