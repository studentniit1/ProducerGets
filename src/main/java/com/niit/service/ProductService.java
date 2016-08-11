package com.niit.service;

import java.util.List;

import com.niit.model.ProductModel;

public interface ProductService {
	
	public void add(ProductModel p1);
	public void edit(ProductModel p1);
	public void delete(String Id);
	public ProductModel getProductModel(String getId);
	public List getAllProductModel();
}
