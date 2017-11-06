package com.huanliu.service;

import com.huanliu.dataobject.ProductCategory;

import java.util.List;

/**
 * 类目
 * Created by liuhuan on 2017/10/10.
 */
public interface CategoryService {

    ProductCategory findOne(Integer categoryId);

    List<ProductCategory> findAll();

    List<ProductCategory> findByCategoryTypeIn(List<Integer> categoryTypeList);

    ProductCategory save(ProductCategory productCategory);
}
