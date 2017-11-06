package com.huanliu.dto;

import lombok.Data;

/**
 * Created by liuhuan on 2017/10/11.
 */
@Data
public class CartDTO {

    /** 商品Id. */
    private String productId;

    /** 商品数量. */
    private Integer productQuantity;

    public CartDTO(String productId, Integer productQuantity) {
        this.productId = productId;
        this.productQuantity = productQuantity;
    }
}
