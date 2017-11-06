package com.huanliu.service.impl;

import com.huanliu.dto.OrderDTO;
import com.huanliu.service.OrderService;
import com.lly835.bestpay.model.PayRequest;
import com.lly835.bestpay.service.impl.BestPayServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.*;

/**
 * Created by liuhuan on 2017/10/14.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
@Slf4j
public class PayServiceImplTest {

    @Autowired
    private PayServiceImpl payService;

    @Autowired
    private OrderService orderService;

    @Test
    public void testCreate() throws Exception {
        OrderDTO orderDTO = orderService.findOne("1507714006687538888");
        payService.create(orderDTO);
    }

    @Test
    public void testRefund() {
        OrderDTO orderDTO = orderService.findOne("1507714006687538888");
        payService.refund(orderDTO);
    }
}