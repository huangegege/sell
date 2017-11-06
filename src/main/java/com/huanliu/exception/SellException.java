package com.huanliu.exception;

import com.huanliu.enums.ResultEnum;

/**
 * Created by liuhuan on 2017/10/10.
 */
public class SellException extends RuntimeException {

    private Integer code;

    public SellException(ResultEnum resultEnum) {
        super(resultEnum.getMessage());

        this.code = resultEnum.getCode();
    }

    public SellException(Integer code, String message) {
        super(message);
        this.code = code;
    }
}
