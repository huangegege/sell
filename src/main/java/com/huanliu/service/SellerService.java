package com.huanliu.service;

import com.huanliu.dataobject.SellerInfo;

/**
 * 卖家端
 * Created by liuhuan on 2017/10/21.
 */
public interface SellerService {

    /**
     * 通过openid查询卖家端信息
     * @param openid
     * @return
     */
    SellerInfo findSellerInfoByOpenid(String openid);
}
