package ua.ck.example.dao;


import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ua.ck.example.domain.Comments;
import ua.ck.example.domain.Users;

@Repository
public class UsersDAOImpl implements UsersDAO{
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Users> showUsers() {
		
		return sessionFactory.getCurrentSession().createQuery("from Users")
	            .list();
	}
	
	@SuppressWarnings("unchecked")
	public List <Users> getRole() {
		return sessionFactory.getCurrentSession().createQuery("from Users where Roles =?").list();
	}

	public void addUsers(Users user) {
		
		sessionFactory.getCurrentSession().save(user);
	}

	
	public void delUsers(Integer id) {
		
		Users user = (Users) sessionFactory.getCurrentSession().load(
                Users.class, id);
        if (null != user) {
            sessionFactory.getCurrentSession().delete(user);
        }
	}
	
	public void setRoleAdmin(Integer id) {
		
	Users user = (Users) sessionFactory.getCurrentSession().get(Users.class, id);
	user.setRoles("ROLE_ADMIN");
	sessionFactory.getCurrentSession().update(user);

	}
	public void setRoleUser(Integer id) {
		
		Users user = (Users) sessionFactory.getCurrentSession().get(Users.class, id);
		user.setRoles("ROLE_USER");
		sessionFactory.getCurrentSession().update(user);
	}
	
	public Users viewUserInfoUsername(String username) {
		
		return (Users) sessionFactory.getCurrentSession()
		.createCriteria(Users.class).add(Restrictions.eq("username", username)).uniqueResult();
		
	}

	public List<Comments> getUserComments(Integer id) {
		
		Users user = (Users) sessionFactory.getCurrentSession().get(Users.class, id);
		return user.getComments();
	}

	public Integer getUserIdByUsername(String username) {
		
		Users user = (Users) sessionFactory.getCurrentSession()
				.createCriteria(Users.class).add(Restrictions.eq("username", username)).uniqueResult();
		return user.getId();
	}

	public Users getCurrentUser(Integer id) {
		
		return (Users) sessionFactory.getCurrentSession().get(Users.class, id);
	}
}
