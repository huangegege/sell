package com.huanliu.service;

import com.huanliu.dto.OrderDTO;
import com.lly835.bestpay.model.PayResponse;
import com.lly835.bestpay.model.RefundResponse;
import org.springframework.stereotype.Component;

/**
 * 支付
 * Created by liuhuan on 2017/10/14.
 */
@Component
public interface PayService {

    PayResponse create(OrderDTO orderDTO);

    PayResponse notify(String notifyData);

    RefundResponse refund(OrderDTO orderDTO);
}
