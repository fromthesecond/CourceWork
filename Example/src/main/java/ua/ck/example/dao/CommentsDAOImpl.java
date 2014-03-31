package ua.ck.example.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ua.ck.example.domain.Comments;

@Repository
public class CommentsDAOImpl implements CommentsDAO {

	@Autowired
    private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<Comments> listComments() {
		
		return sessionFactory.getCurrentSession().createQuery("from Comments")
	            .list();
	}

	public Comments commentById(Integer id) {

		return (Comments) sessionFactory.getCurrentSession().get(Comments.class, id);
	}

	public void delComment(Integer id) {
		
		Comments comment = (Comments) sessionFactory.getCurrentSession().get(Comments.class, id);
		
		if (null != comment) {
			sessionFactory.getCurrentSession().delete(comment);
		}
	}

	public void addComment(Comments comment) {
		
		sessionFactory.getCurrentSession().save(comment);	
	}

}
