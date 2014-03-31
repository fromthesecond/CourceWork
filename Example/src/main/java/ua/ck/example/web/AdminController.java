package ua.ck.example.web;

import java.security.Principal;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ua.ck.example.domain.Comments;
import ua.ck.example.domain.Games;
import ua.ck.example.service.CommentService;
import ua.ck.example.service.GameService;
import ua.ck.example.service.UserService;

@Controller
public class AdminController {
	
	@Autowired
	private GameService gameService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private CommentService commentService;
	
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about() {
		return "about";
	}
	
	@RequestMapping(value = "/contactUs", method = RequestMethod.GET)
	public String contactUs() {
		return "contact";
	}
	
	@RequestMapping  (value = "/admin/setRoleAdmin/{id}", method = RequestMethod.GET)
	public String setRoleAdmin (Model model, @PathVariable("id") Integer id) {
		
		userService.setRoleAdmin(id);
		return "redirect:/admin";
	}
	
	@RequestMapping  (value = "/admin/setRoleUser/{id}", method = RequestMethod.GET)
	public String setRoleUser (Model model, @PathVariable("id") Integer id) {
		
		userService.setRoleUser(id);
		return "redirect:/admin";
	}
	
	@RequestMapping(value = "/show/app/{id}", method = RequestMethod.GET)
	public String app (Model model, @PathVariable("id") Integer id, Games game, Principal principal) {
		
		if (principal == null) {
			model.addAttribute("user", "Register to buy games and leave a commentaries");
			model.addAttribute("name", "Guest");
			model.addAttribute("byId",gameService.getGameById(id));
		}
		else {
			model.addAttribute("user", principal.getName());
			model.addAttribute("byId",gameService.getGameById(id));
		}
		if (gameService.getGameComments(id).isEmpty()) {
			
			model.addAttribute("comment", "emptyList");
		}
		else {
			model.addAttribute("commentList", gameService.getGameComments(id));
		}
			
		
		return "app";
	}
	
/********************************* ADD Comments FORM ***************************/
	
	@RequestMapping(value = "/show/app/{id}", method = RequestMethod.POST)
	public String addCommentPost(@ModelAttribute("comment") Comments comment,
            BindingResult result, @PathVariable("id") Integer id, Principal principal, Model model) {
		
		
		Date date = new Date();
		comment.setDate(date);
		comment.setUser(userService.getCurrentUser(userService.getUserIdByUsername(principal.getName())));
		comment.setGame(gameService.getGame(id));
		commentService.addComment(comment);
		return "redirect:/show/app/{id}";
	}
	
}
