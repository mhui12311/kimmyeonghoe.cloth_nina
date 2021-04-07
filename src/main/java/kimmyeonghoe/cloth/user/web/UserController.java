package kimmyeonghoe.cloth.user.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kimmyeonghoe.cloth.common.Log;
import kimmyeonghoe.cloth.user.domain.LoginDTO;
import kimmyeonghoe.cloth.user.domain.User;
import kimmyeonghoe.cloth.user.service.UserService;

@Controller("kimmyeonghoe.cloth.user.web")
@RequestMapping("/user")
public class UserController{
	@Autowired private UserService userService;
	
	@RequestMapping("/login")
	public String login(LoginDTO loginDTO, @CookieValue(required=false) Cookie loginCookie) {
		if(loginCookie != null) loginDTO.setUserId(loginCookie.getValue());
		return "user/login";
	}
	
	@ResponseBody
	@RequestMapping("/idChk")
	public String idChk(@RequestParam("userId") String userId) {
		String result = userService.chkId(userId);
		if(result == null) result = "";
		return result;
	}
	
	@RequestMapping("/join")
	public String join(User user) {
		return "user/join";
	}
	
	@PostMapping("/join")
	@Log
	public void joinUser(@RequestBody User user){
		userService.join(user);
	}
	
	@PostMapping("/login")
	@Log
	public User loginchk(@Valid @RequestParam("userId") String userId, @RequestParam("userPw") String userPw, Model model){
		User user = userService.chkUser(userId, userPw);
		{
			if(user.getUserId().equals("admin")) {
				model.addAttribute("admin",user);
			}else {
				model.addAttribute("user",user);
			}
		}
		
		return user;
	}
	
	@GetMapping("/logout")
	@Log
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/user/login";
	}
}
