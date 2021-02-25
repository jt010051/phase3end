package com.jt.TaskManager.api;

import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.jt.TaskManager.Model.User;
import com.jt.TaskManager.Model.Service.UserSer;


@RestController
public class TmController {
	@Autowired
	UserSer service;
	  @RequestMapping(value={"/", "/index"}, method = RequestMethod.GET)
	    public ModelAndView index(){
	        ModelAndView modelAndView = new ModelAndView();
	        modelAndView.setViewName("index");
	        return modelAndView;
	    }




//@GetMapping("/{id}")
//public ResponseEntity<User> get(@RequestParam("User-id") Integer id) {
//    try {
//        User user = service.getUser(id);
//        return new ResponseEntity<User>(user, HttpStatus.OK);
//    } catch (NoSuchElementException e) {
//        return new ResponseEntity<User>(HttpStatus.NOT_FOUND);
//    }
//}
}
