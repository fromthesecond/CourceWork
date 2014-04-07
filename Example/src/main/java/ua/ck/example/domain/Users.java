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
@Table(name = "Users")
public class Users {

	@Id
	@GeneratedValue
	private int id;
	private String username;
	@Column(name = "Password")
	private String pass;
	private String email;
	@Column(name = "Roles")
	private String roles;
	

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	@Cascade({CascadeType.ALL})
	List <Comments> comments = new ArrayList<Comments>();
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	@Cascade({CascadeType.ALL})
	List <Orders> userOrder = new ArrayList<Orders>();
	
	public List<Orders> getUserOrder() {
		return userOrder;
	}
	
	public void setUserOrder(List<Orders> userOrder) {
		this.userOrder = userOrder;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRoles() {
		return roles;
	}

	public void setRoles(String roles) {
		this.roles = roles;
	}

	public List<Comments> getComments() {
		return comments;
	}

	public void setComments(List<Comments> comments) {
		this.comments = comments;
	}

	

}