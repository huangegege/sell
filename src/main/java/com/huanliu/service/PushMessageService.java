package com.huanliu.service;

import com.huanliu.dto.OrderDTO;

/**
 * 推送消息
 * Created by liuhuan on 2017/10/22.
 */
public interface PushMessageService {

    /**
     * 订单状态变更消息
     * @param orderDTO
     */
    void orderStatus(OrderDTO orderDTO);
}
