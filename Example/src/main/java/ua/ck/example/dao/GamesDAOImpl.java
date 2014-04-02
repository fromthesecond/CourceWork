package ua.ck.example.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ua.ck.example.domain.Comments;
import ua.ck.example.domain.Games;
import ua.ck.example.domain.Images;

@Repository
public class GamesDAOImpl implements GamesDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	public List<Games> listGames() {

		return sessionFactory.getCurrentSession().createQuery("from Games")
				.list();
	}
	
	public void addGames(Games game) {
		
		sessionFactory.getCurrentSession().save(game);
	}

	public void removeGames(Integer id) {

		Games games = (Games) sessionFactory.getCurrentSession().load(
				Games.class, id);

		if (null != games) {
			sessionFactory.getCurrentSession().delete(games);
		}
	}
	
	public Games gameById (Integer id) {
		
		Games games = (Games) sessionFactory.getCurrentSession().get(Games.class, id);
		return games;
	}

	
	public List<Comments> getGameComments(Integer id) {
		
		Games games = (Games) sessionFactory.getCurrentSession().get(Games.class, id);
		return games.getComments();
	}


	public Games getGame(Integer id) {
		
		return (Games) sessionFactory.getCurrentSession().get(Games.class, id);
	}

	
	public List<Images> getGameImages(Integer id) {
		Games games = (Games) sessionFactory.getCurrentSession().get(Games.class, id);
		
		return games.getImages();
	}

}
