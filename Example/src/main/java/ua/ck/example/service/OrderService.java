package ua.ck.example.service;

import java.util.List;

import ua.ck.example.domain.Orders;

public interface OrderService {
	
	public List <Orders> getAllOrders();
	public void addOrder (Orders orders);
	public void deleteOrder (Integer id);
	
}
