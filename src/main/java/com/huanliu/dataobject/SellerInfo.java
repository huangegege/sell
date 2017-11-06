package com.huanliu.dataobject;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by liuhuan on 2017/10/21.
 */
@Data
@Entity
public class SellerInfo {

    @Id
    private String id;

    private String username;

    private String password;

    private String openid;
}
