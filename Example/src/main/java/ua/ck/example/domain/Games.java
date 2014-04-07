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

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

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
	
	private double price;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "game")
	@Cascade({CascadeType.ALL})
	private List <Comments> comments = new ArrayList<Comments>();
	
	@OneToMany (fetch = FetchType.LAZY, mappedBy = "game")
	@Cascade({CascadeType.ALL})
	private List <Images> images = new ArrayList <Images>();
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "game")
	@Cascade({CascadeType.ALL})
	private List <Orders> gameOrder = new ArrayList <Orders>();
	
	public List<Orders> getGameOrder() {
		return gameOrder;
	}
	public void setGameOrder(List<Orders> gameOrder) {
		this.gameOrder = gameOrder;
	}
	public List<Images> getImages() {
		return images;
	}
	public void setImages(List<Images> images) {
		this.images = images;
	}
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
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
}
