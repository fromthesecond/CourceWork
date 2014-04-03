package ua.ck.example.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "Comments")
public class Comments {

	@Id
	@GeneratedValue
	private int id;
	private String title;
	private String comment;
	@Temporal(TemporalType.TIMESTAMP)
	private Date date;
	private int rating;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idUser")
	private Users user;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idGame")
	private Games game;
	
	public String getUserName () {
		
		return user.getUsername();
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}
	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public Games getGame() {
		return game;
	}

	public void setGame(Games game) {
		this.game = game;
	}
}