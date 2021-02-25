package com.jt.TaskManager.OtherController;

import java.security.Principal;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.jt.TaskManager.Exception.TaskNotFoundException;
import com.jt.TaskManager.Model.Task;
import com.jt.TaskManager.Model.User;
import com.jt.TaskManager.Model.Repository.TaskRepo;
import com.jt.TaskManager.Model.Service.UserSer;
@Controller
@RequestMapping("/")
public class Contr {
	@Autowired
	UserSer service;
	@GetMapping("login")

	public String getLoginView() {
		
		return  "login";
	}
	@GetMapping("/getall")

	public String getDisplay() {
		
		return  "display";
	}
	@GetMapping("/update-task")

	public String getUpdate() {
		
		return  "update-task";
	}
	 @Autowired
	    private TaskRepo repo;
	 @RequestMapping(value = "/display", method = RequestMethod.GET)
	    public String displayTasks(ModelMap model) {
	        String name = (String) model.get("tasks");
	        Iterable<Task> tasks = service.listAllUser();

	        model.put("tasks", service.listAllUser());
	        return "display";
	    
	    }
	 @PostMapping("/update/{id}")
		public RedirectView updateTask(Principal principal, Task task, @PathVariable("id") Integer id) {
			service.UpdateTask(task);
			return new RedirectView("/display-tasks");
		}
	 @GetMapping("/update/{id}")
		public String updateTaskForm(ModelMap model, @PathVariable("id") Integer id) {
			Task task = service.GetTaskById(id);
			model.put("task", task);
			return "update-task";
		}
//	    @RequestMapping(value = "/update", method = RequestMethod.POST)
//	    public String showUpdateTask(ModelMap model) {
//
//	        Integer id = (Integer) model.get("taskid");
//
//	        Optional<Task> task;
//	        try {
//	            task = service.GetTaskById(id);
//	        }
//	        catch(TaskNotFoundException ex) {
//	            model.put("Error", "not-found-error");
//	             //return "not-found-error";
//	        }
//
//	        return "create";
//	    }
	    @RequestMapping(value = "/create", method = RequestMethod.GET)
	    public String showCreateTask(ModelMap model) {

	        return "display";
	    }


	    @RequestMapping(value="/create", method = RequestMethod.POST)
	    public String submitCreateTask(ModelMap model,
	                                   @RequestParam String task,
	                                   @RequestParam String startdate,
	                                   @RequestParam String enddate,
	                                   @RequestParam String description,
	                                   @RequestParam String email,
	                                   @RequestParam String severity,
	                                   @RequestParam String username){


	        model.put("task", task);

	        Task t = new Task();
	        t.setTask(task);


	        t.setStartDate(startdate);
	        t.setEndDate(enddate);
	        t.setDescription(description);
	        t.setEmail(email);
	        t.setSeverity(severity);

	        //TODO: Handle case where User is not found.
	        User retrievedUser = service.GetUserByName(username);
	        t.setUser(retrievedUser);

	        service.saveTask(t);
	        return "create";
	    }
}
