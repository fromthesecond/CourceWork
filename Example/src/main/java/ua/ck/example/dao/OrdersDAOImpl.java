package ua.ck.example.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ua.ck.example.domain.Orders;

@Repository
public class OrdersDAOImpl implements OrdersDAO {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Orders> getAllOrders() {
		
		return sessionFactory.getCurrentSession().createQuery("from Orders")
	            .list();
	}


	public void addOrder(Orders orders) {
		
		sessionFactory.getCurrentSession().save(orders);
	}

}
