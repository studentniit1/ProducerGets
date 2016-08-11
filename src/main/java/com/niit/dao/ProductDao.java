package com.niit.dao;

import java.util.List;

import com.niit.model.ProductModel;

public interface ProductDao {

public 	void add(ProductModel productModel);

public void edit(ProductModel productModel);

public void delete(String getId);

public ProductModel getProductModel(String getId);

public List getAllProductModel();

}
