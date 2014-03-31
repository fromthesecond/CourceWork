package ua.ck.example.domain;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Games")
public class Games {

	@Id
	@Column(name = "ID")
	@GeneratedValue
	private int id;

	@Column(name = "NAME")
	private String nameGame;
	@Column(name = "DESCRIPTION")
	private String description;
	@Column(name = "URL")
	private String url;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "game")
	private List <Comments> comments = new ArrayList<Comments>();
	
	public List<Comments> getComments() {
		return comments;
	}
	public void setComments(List<Comments> comments) {
		this.comments = comments;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNameGame() {
		return nameGame;
	}
	public void setNameGame(String nameGame) {
		this.nameGame = nameGame;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}

}
