package ua.ck.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ua.ck.example.dao.CommentsDAO;
import ua.ck.example.domain.Comments;

@Service
public class CommentServiceImpl implements CommentService{

	@Autowired
	private CommentsDAO commentsDAO;
	
	@Transactional
	public List<Comments> listComments() {
		
		return commentsDAO.listComments();
	}

	@Transactional
	public Comments commentById(Integer id) {
		
		return commentsDAO.commentById(id);
	}

	@Transactional
	public void delComment(Integer id) {
		
		commentsDAO.delComment(id);	
	}
	
	@Transactional
	public void addComment(Comments comment) {
		
		commentsDAO.addComment(comment);
	}
}
