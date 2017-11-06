package com.huanliu.service;

import com.huanliu.dto.OrderDTO;

/**
 * 买家
 * Created by liuhuan on 2017/10/11.
 */
public interface BuyerService {

    //查询一个订单
    OrderDTO findOrderOne(String openid, String orderId);

    //取消订单
    OrderDTO cancelOrder(String openid, String orderId);
}
