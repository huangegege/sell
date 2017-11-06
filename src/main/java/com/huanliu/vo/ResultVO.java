package com.huanliu.vo;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Data;

import java.io.Serializable;

/**
 * http请求返回的最外层对象
 * Created by liuhuan on 2017/10/10.
 */
@Data
//@JsonInclude(JsonInclude.Include.NON_NULL)
public class ResultVO<T> implements Serializable {

    private static final long serialVersionUID = -7083366788190748893L;

    /** 错误码. */
    private Integer code;

    /** 提示信息. */
    private String message = "";

    /** 具体内容. */
    private T data;
}
