package com.huanliu.service.impl;

import com.huanliu.dataobject.SellerInfo;
import com.huanliu.repository.SellerInfoRepository;
import com.huanliu.service.SellerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by liuhuan on 2017/10/21.
 */
@Service
public class SellerServiceImpl implements SellerService {

    @Autowired
    private SellerInfoRepository repository;

    @Override
    public SellerInfo findSellerInfoByOpenid(String openid) {
        return repository.findByOpenid(openid);
    }
}
