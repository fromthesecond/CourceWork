package ua.ck.example.dao;

import java.util.List;

import ua.ck.example.domain.Comments;
import ua.ck.example.domain.Games;

public interface GamesDAO {

	public List<Games> listGames();

	public void removeGames(Integer id);
	
	public void addGames (Games game);
	
	public Games gameById(Integer id);
	
	public List <Comments> getGameComments (Integer id);
	
	public Games getGame (Integer id);
}
