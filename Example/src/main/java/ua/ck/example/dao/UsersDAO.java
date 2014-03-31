package ua.ck.example.dao;

import java.util.List;

import ua.ck.example.domain.Comments;
import ua.ck.example.domain.Users;

public interface UsersDAO {
	
	public List <Users> showUsers();
	public void addUsers(Users user);
	public void delUsers(Integer id);
	public void setRoleAdmin(Integer id);
	public void setRoleUser(Integer id);
	public Users viewUserInfoUsername(String username);
	public List <Comments> getUserComments(Integer id);
	public Integer getUserIdByUsername(String username);
	public Users getCurrentUser (Integer id);
	
}
