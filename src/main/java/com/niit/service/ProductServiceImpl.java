package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.ProductDao;
import com.niit.model.ProductModel;
@Service
@Transactional
public class ProductServiceImpl  implements ProductService{
@Autowired
private ProductDao productdao;

@Override	
public void add(ProductModel p1){
	productdao.add(p1);
	
}
@Override	
public void edit(ProductModel p1){
	productdao.edit(p1);
	
}
@Override	
public void delete(String getId){
	productdao.delete(getId);
	
}
@Override
public ProductModel getProductModel(String getId){
	return productdao.getProductModel(getId);
}
@Override
public List getAllProductModel(){
	return productdao.getAllProductModel();
}

}
