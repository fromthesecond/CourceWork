package ua.ck.example.service;

import java.util.List;

import ua.ck.example.domain.Comments;
import ua.ck.example.domain.Games;
import ua.ck.example.domain.Images;

public interface GameService {
	
	public List <Games> listGames();
	public void removeGames(Integer id);
	public void addGames (Games game);
	public Games getGameById(Integer id);
	public List <Comments> getGameComments (Integer id);
	public Games getGame (Integer id);
	public List <Images> getGameImages (Integer id);
}
