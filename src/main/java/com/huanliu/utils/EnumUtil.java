package com.huanliu.utils;

import com.huanliu.enums.CodeEnum;

/**
 * Created by liuhuan on 2017/10/15.
 */
public class EnumUtil {

    public static <T extends CodeEnum>T getByCode(Integer code, Class<T> enumClass) {
        for (T each: enumClass.getEnumConstants()) {
            if (code.equals(each.getCode())) {
                return each;
            }
        }
        return null;
    }
}
