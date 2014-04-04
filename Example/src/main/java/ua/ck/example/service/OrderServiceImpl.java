package ua.ck.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ua.ck.example.dao.OrdersDAO;
import ua.ck.example.domain.Orders;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrdersDAO ordersDAO;

	@Transactional
	public List<Orders> getAllOrders() {
		
		return ordersDAO.getAllOrders();
	}

	@Transactional
	public void addOrder(Orders orders) {
		
		ordersDAO.addOrder(orders);
	}

	@Transactional
	public void deleteOrder(Integer id) {
		
		ordersDAO.deleteOrder(id);
	}
}
