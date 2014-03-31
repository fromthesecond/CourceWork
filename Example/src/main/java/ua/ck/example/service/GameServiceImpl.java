package ua.ck.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ua.ck.example.dao.GamesDAO;
import ua.ck.example.domain.Comments;
import ua.ck.example.domain.Games;

@Service
public class GameServiceImpl implements GameService {

	@Autowired
	private GamesDAO gamesDAO;

	@Transactional
	public List<Games> listGames() {

		return gamesDAO.listGames();
	}
	
	@Transactional
	public void addGames(Games game) {
		gamesDAO.addGames(game);
	}

	@Transactional
	public void removeGames(Integer id) {

		gamesDAO.removeGames(id);

	}
	
	@Transactional
	public Games getGameById (Integer id) {
		
		return gamesDAO.gameById(id);
	}

	@Transactional
	public List<Comments> getGameComments(Integer id) {
		
		return gamesDAO.getGameComments(id);
	}

	@Transactional
	public Games getGame(Integer id) {
		
		return gamesDAO.getGame(id);
	}
	

}
