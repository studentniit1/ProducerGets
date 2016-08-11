package com.niit.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.model.User;
import com.niit.service.LoginService;



	@Controller
	public class ProducerController {

		@Autowired(required=true)
		LoginService ls;
		
		@RequestMapping(value={"/","index"})
		public String getinitial(){
			return "index";
		}
		
		
		@ModelAttribute("users")
			public User get() {
				return new User();
			}
		@RequestMapping(value="/register",method=RequestMethod.GET)
		public String getregister(){
			return "Register";
		}
		@ModelAttribute("user")
		public User t(){
			return new User();
		}
		@RequestMapping(value={"/india"},method=RequestMethod.GET)
		public String getindia(){
			return "Login";
		}
		
		
		@RequestMapping(value="/india",method=RequestMethod.POST)
	    public ModelAndView submit(@ModelAttribute("user") User u) {
			ModelAndView mv=null;
			
			 if (u.getName().equals("niit") && u.getPassword().equals("1234")){
				mv=new ModelAndView("success"); 
		              ((Model) mv).addAttribute("msg", "welcome" + u.getName());
		            }
			
		            else {
		            	 mv=new ModelAndView("index");
		                ((Model) mv).addAttribute("msg", "Invalid Details");
		                ls.checkUser(u);
		               
		            }
		            
		     return mv;
		     }
		           @RequestMapping(value = "/register", method = RequestMethod.POST)
			public ModelAndView reguser(@ModelAttribute("Registration") User t) {
				ModelAndView mc =new ModelAndView("login");
				return mc;	
			}


	}

	
