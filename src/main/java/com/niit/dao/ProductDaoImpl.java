package com.niit.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.ProductModel;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
@Autowired
private SessionFactory session;
	
	@Override
	public void add(ProductModel p1) {
		session.getCurrentSession().save(p1);
	}

	@Override
	public void edit(ProductModel p1) {
		session.getCurrentSession().update(p1);
		
	}

	@Override
	public void delete(String getId) {
		session.getCurrentSession().delete(getProductModel(getId));
	}

	@Override
	public ProductModel getProductModel(String getId) {
		return (ProductModel)session.getCurrentSession().get(ProductModel.class,getId);
	}

	@Override
	public List getAllProductModel() {
		return session.getCurrentSession().createQuery("from ProductModel").list();
	}
	

}
