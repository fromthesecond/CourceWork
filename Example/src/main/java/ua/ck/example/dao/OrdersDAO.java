package ua.ck.example.dao;

import java.util.List;

import ua.ck.example.domain.Games;
import ua.ck.example.domain.Orders;
public interface OrdersDAO {
	
	public List <Orders> getAllOrders();
	public void addOrder (Orders orders);
	public void deleteOrder (Integer id);
}
