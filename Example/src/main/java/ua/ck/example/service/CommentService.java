package ua.ck.example.service;

import java.util.List;

import ua.ck.example.domain.Comments;

public interface CommentService {
	
	public List <Comments> listComments();
	public Comments commentById(Integer id);
	public void delComment(Integer id);
	public void addComment(Comments comment);

}
