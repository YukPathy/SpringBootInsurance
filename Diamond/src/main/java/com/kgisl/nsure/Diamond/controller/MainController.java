package com.kgisl.nsure.Diamond.controller;

import java.net.URI;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import org.springframework.web.util.UriComponentsBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

import com.kgisl.nsure.Diamond.dao.UserDAO;
import com.kgisl.nsure.Diamond.model.User;
import com.kgisl.nsure.Diamond.model.UserForm;

@Controller
public class MainController {

	@Autowired
	private UserDAO userDAO;
	
	private String message = "Hello World";

	@RequestMapping("/")
	public String home(Map<String, Object> model) {
		model.put("message", "To Start with Quotation Creation !!");
		return "index";
	}
	
	@RequestMapping("/adminLogin")
	public String adminLogin(Map<String, Object> model) {
		//model.put("message", "You are in new page !!");
		return "auth/adminLogin";
	}
	
	@RequestMapping(value = "/client")
    public String clientDetails() {
		System.out.println("Loading client ");
		return "client";
	}
	
	@RequestMapping(value = "/client1/{userName}", method = RequestMethod.GET)
    @ResponseBody
    public String clientDetails1(@PathVariable("userName") String userName) {
		System.out.println("Loading client with Name: " + userName);
		return "client";
	}
	
	@RequestMapping(value="/users",method=RequestMethod.GET)
	@ResponseBody
	public List<User> getAllUsers() {
        List<User> list = userDAO.getAllUsers(null);
        return list;
	}
	
	@RequestMapping(value = "/user1/{userName}", method = RequestMethod.GET)
    @ResponseBody
    public String checkEmployee(@PathVariable("userName") String userName) {
		System.out.println("(Service Side) Checking employee with Id: " + userName);
		return "client";
	}
	
	//@PathVariable is to obtain some placeholder from the URI (Spring call it an URI Template)
	//@RequestParam is to obtain an parameter from the URI as well 
	// for eg: If URL http://localhost:8080/MyApp/user/1234/invoices?date=12-05-2013
	//@RequestMapping(value="/user/{userId}/invoices", method = RequestMethod.GET)
	/*@RequestMapping(value="/user/{userName}", method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView findOwner(@PathVariable("userName") String userName) {
		List<User> list = userDAO.getAllUsers(userName);
	  //model.addAttribute("userForm", list);  
	  ModelAndView model = new ModelAndView("client");
      return model;
	  //return "client"; 
	}*/
	
	/*@RequestMapping(value="/user", method=RequestMethod.GET)
	@ResponseBody
	public User findOwner() {
		List<User> list = userDAO.getAllUsers("admin");
	  //model.addAttribute("userForm", list);  
	  //ModelAndView model = new ModelAndView("client");
		User user = list.get(0);
		return user;
	  //return "client"; 
	}*/
	
	//-------------------Check the User--------------------------------------------------------
    
    /*@RequestMapping(value = "/user", method = RequestMethod.POST)
    public ResponseEntity<String> checkUser(@RequestBody UserForm userForm, RedirectAttributes redirectAttributes, HttpServletResponse resp){//, UriComponentsBuilder ucBuilder) {
        System.out.println("Checking User " + userForm.getUserName());
        List<User> users = userDAO.getAllUsers(userForm.getUserName());
        boolean userExists = false;
        for(User user : users){
			if(user.getUserName().equalsIgnoreCase(userForm.getUserName())){
				userExists = true;
			}
		}
		
        if (!userExists) {
            System.out.println("Invalid username or password" + userForm.getUserName());
            return new ResponseEntity<String>(HttpStatus.CONFLICT);
        	//resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Invalid username or password " + userForm.getUserName()); // explicitely put error message in request
            //return null; 
        }
  
        HttpHeaders headers = new HttpHeaders();
        headers.setLocation(ucBuilder.path("/client").buildAndExpand(userForm.getUserName()).toUri());
        return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Location", "/client");    
        return new ResponseEntity<String>(headers,HttpStatus.FOUND);
        
        URI location = ServletUriComponentsBuilder.fromCurrentRequest().path("/client/{'admin'}").buildAndExpand(userForm.getUserName()).toUri();
        //URI location = ServletUriComponentsBuilder.fromCurrentServletMapping().path("/client").build().expand(userForm.getUserName()).toUri();
        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.setLocation(location);
        responseHeaders.set("MyResponseHeader", "MyValue");
        return new ResponseEntity<String>("Hello World", responseHeaders, HttpStatus.CREATED);
        
        //return "redirect:/client";
    }*/
//-------------------Check the User--------------------------------------------------------
    
    @RequestMapping(value = "/user", method = RequestMethod.POST)
    public String checkUser(@RequestBody UserForm userForm, BindingResult result){//, RedirectAttributes redirectAttrs) {
        System.out.println("Checking User " + userForm.getUserName()+" Checking Password" + userForm.getPassword()+"test");
        List<User> users = userDAO.getAllUsers(userForm.getUserName());
        boolean userExists = false;
        String userName = null;
        for(User user : users){
			if(user.getUserName().equalsIgnoreCase(userForm.getUserName()) && user.getPassword().equalsIgnoreCase(userForm.getPassword())){
				userExists = true;
				//userName = user.getUserName();
				System.out.println("User Logged IN " + userForm.getUserName());
			}
		}
		
        if (!userExists) {
            System.out.println("Invalid username or password" + userForm.getUserName());
            //return new ResponseEntity<String>(HttpStatus.CONFLICT);
        	//resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Invalid username or password " + userForm.getUserName()); // explicitely put error message in request
            return null; 
        }
        // Save client ...
        //redirectAttrs.addAttribute("userName", "admin").addFlashAttribute("message", "Client Page!");
        return "client";
       
    }
    
    /*@RequestMapping(value = "/accounts", method = RequestMethod.POST)
    public String handle(Account account, BindingResult result, RedirectAttributes redirectAttrs) {
      if (result.hasErrors()) {
        return "accounts/new";
      }
      // Save account ...
      redirectAttrs.addAttribute("id", account.getId()).addFlashAttribute("message", "Account created!");
      return "redirect:/accounts/{id}";
    }*/
}
