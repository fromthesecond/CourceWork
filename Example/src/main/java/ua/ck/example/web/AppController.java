package ua.ck.example.web;


import java.security.Principal;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.ck.example.domain.Games;
import ua.ck.example.domain.Users;
import ua.ck.example.service.CommentService;
import ua.ck.example.service.GameService;
import ua.ck.example.service.UserService;

@Controller
public class AppController {
	
	@Autowired
	private GameService gameService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private CommentService commentService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String hello() {
		return "index";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/error403", method = RequestMethod.GET)
	public String error() {
		return "error403";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpServletRequest request) {
		
		if (request.isUserInRole("ROLE_ADMIN")){
			return "redirect:/admin";
		}
		else if (request.isUserInRole("ROLE_USER")) {
			return "redirect:/profile";
		}
		else {
			return "login";
		}
	}

	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String listGames (Model model, Principal principal) {
		
		if (principal == null) {
			model.addAttribute("name", "Guest");
		}
		
		else {
			String name = principal.getName();
			model.addAttribute("name", name);
			
		}
		model.addAttribute("listGames", gameService.listGames());
		return "show";
		
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin (Model model, Principal principal) {
		
		model.addAttribute("name", principal.getName());
		model.addAttribute("user", "Changed to User");
		model.addAttribute("users", userService.showUsers());
		return "admin";
	}
	
	/*************** Get and Post Form ******************************/
	
	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public String addUserGet(Model model) {
		
		model.addAttribute("user", new Users());

		return "signUp";
	}
	
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public String addUser(@ModelAttribute("user") Users user,
            BindingResult result) {
		
		user.setRoles("ROLE_USER");
		userService.addUsers(user);
		

		return "redirect:/login";
	}
	
	/******************************* Delete block *******************************/
	
	@RequestMapping(value = "/delete/{gameId}", method = RequestMethod.GET)
	public String remove (@PathVariable("gameId") Integer gameId) {
		
		gameService.removeGames(gameId);
		return "redirect:/show";
	}
	
	//@PreAuthorize("hasRole('ROLE_ADMIN')")
	
	@RequestMapping(value = "/deleteUser/{userId}", method = RequestMethod.GET)
	public  String removeUser (@PathVariable("userId") Integer userId) {
		
		userService.delUsers(userId);
		return "redirect:/admin";
	}
	/********************************* ADD GAME FORM ***************************/
	
	@RequestMapping(value = "/addgame", method = RequestMethod.GET)
	public String addGame(Model model) {
		
		model.addAttribute("game", new Games());

		return "addgame";
	}
	@RequestMapping(value = "/addgame", method = RequestMethod.POST)
	public String addGamePost(@ModelAttribute("game") Games game,
            BindingResult result) {
		
		gameService.addGames(game);

		return "redirect:/show";
	}
	
	/********************************USERPROFILE*********************************/
	
	@RequestMapping (value = "/home", method = RequestMethod.GET)
	public String homeVerification (Model model, Principal principal, Users user, HttpServletRequest request) {
		
		if(request.isUserInRole("ROLE_ADMIN")) {
			return "redirect:/admin";
		}
		else if (request.isUserInRole("ROLE_USER")) {
			return "redirect:/profile";
		}
		else {
			return "redirect:/error403";
		}
	}
	
	@RequestMapping (value = "/profile", method = RequestMethod.GET)
	public String userProfile (Model model, Principal principal, HttpServletRequest request) {
		
		int sessionUserId = userService.getUserIdByUsername(principal.getName());
		
		model.addAttribute("userInfo", userService.viewUserInfoByUsername(principal.getName()));
		
		if (userService.getUserComments(sessionUserId).isEmpty()) {
			model.addAttribute("comments", "emptyList");
		}
		else {
			model.addAttribute("comments", userService.getUserComments(sessionUserId));
		}
		return "profile";
	}
	
	@RequestMapping(value = "/del/{id}", method = RequestMethod.GET)
	public  String removeComment (@PathVariable("id") Integer id) {
			
			commentService.delComment(id);
		return "redirect:/profile";
	}
}
