package com.blog.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.blog.entity.Manager;
import com.blog.service.ManagerService;


@Transactional
@Repository
public class ManagerServiceImpl implements ManagerService {
	
	@Resource 
	private SessionFactory sessionFactory;
	
	
	public void save(Manager manager){
		sessionFactory.getCurrentSession().persist(manager);
	}
	
	public void delete(Integer id){
		sessionFactory.getCurrentSession().delete(
				sessionFactory.getCurrentSession().load(Manager.class, id));
	}
	
	public void update(Manager manager){
		sessionFactory.getCurrentSession().merge(manager);
	}
	
	public Manager querty(Integer id){
		Manager manager = (Manager) sessionFactory.getCurrentSession().get(Manager.class, id);
		return manager;
	}
	
	public Manager querty(String account){
		Manager m = null;
		String hql = "from Manager as manager where manager.account=:account";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString("account", account);
		if(query.list().size()==0){
			return null;
		}
		return  (Manager) sessionFactory.getCurrentSession().createQuery(hql).setString("account", account).list().get(0);
	}
}
