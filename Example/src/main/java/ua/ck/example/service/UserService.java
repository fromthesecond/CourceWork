package ua.ck.example.service;

import java.util.List;

import ua.ck.example.domain.Comments;
import ua.ck.example.domain.Orders;
import ua.ck.example.domain.Users;

public interface UserService {
	
	public List <Users> showUsers();
	public void addUsers(Users user);
	public void delUsers(Integer id);
	public void setRoleAdmin(Integer id);
	public void setRoleUser(Integer id);
	public Users viewUserInfoByUsername(String username);
	public List <Comments> getUserComments(Integer id);
	public Integer getUserIdByUsername(String username);
	public Users getCurrentUser (Integer id);
	public List <Orders> getUserOrders (Integer id);
}
