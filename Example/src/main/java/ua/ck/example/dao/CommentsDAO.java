package ua.ck.example.dao;
import java.util.List;
import ua.ck.example.domain.Comments;

public interface CommentsDAO {
	
	public List <Comments> listComments();
	public Comments commentById(Integer id);
	public void delComment(Integer id);
	public void addComment(Comments comment);
}
