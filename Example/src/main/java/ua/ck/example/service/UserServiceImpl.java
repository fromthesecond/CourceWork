package ua.ck.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ua.ck.example.dao.UsersDAO;
import ua.ck.example.domain.Comments;
import ua.ck.example.domain.Users;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UsersDAO userDAO;

	@Transactional
	public List<Users> showUsers() {

		return userDAO.showUsers();
	}

	@Transactional
	public void addUsers(Users user) {
		userDAO.addUsers(user);
	}

	@Transactional
	public void delUsers(Integer id) {
		userDAO.delUsers(id);

	}
	
	@Transactional
	public void setRoleAdmin(Integer id) {
		userDAO.setRoleAdmin(id);
	}
	
	@Transactional 
	public void setRoleUser(Integer id) {
		userDAO.setRoleUser(id);
	}
	
	@Transactional 
	public Users viewUserInfoByUsername(String username) {
		
		return userDAO.viewUserInfoUsername(username);
	}

	@Transactional 
	public List<Comments> getUserComments(Integer id) {
		
		return userDAO.getUserComments(id);
	}

	@Transactional 
	public Integer getUserIdByUsername(String username) {
		
		return userDAO.getUserIdByUsername(username);
	}

	@Transactional 
	public Users getCurrentUser(Integer id) {
		
		return userDAO.getCurrentUser(id);
	}
	
}
