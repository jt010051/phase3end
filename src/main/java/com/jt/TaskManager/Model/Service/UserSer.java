package com.jt.TaskManager.Model.Service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.jt.TaskManager.Exception.TaskNotFoundException;
import com.jt.TaskManager.Model.Task;
import com.jt.TaskManager.Model.User;
import com.jt.TaskManager.Model.Repository.RoleRepo;
import com.jt.TaskManager.Model.Repository.TaskRepo;
import com.jt.TaskManager.Model.Repository.UserRepo;


@Service
public class UserSer {
    private UserRepo userRepository;
	
    private RoleRepo roleRepository;
    private PasswordEncoder bCryptPasswordEncoder;
@Autowired
private TaskRepo repo;
    @Autowired
    public UserSer(UserRepo userRepository,
    		RoleRepo roleRepository,
                       PasswordEncoder bCryptPasswordEncoder) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }


    public User findUserByUserName(String userName) {
        return userRepository.findByUserName(userName);
    }
    public UserSer(@Qualifier("user")UserRepo userRepository) {
    	super();
    	this.userRepository = userRepository;
    }
    public UserSer(@Qualifier("task")TaskRepo repo) {
    	super();
    	this.repo = repo;
    }
    public UserSer(@Qualifier("role")RoleRepo roleRepository) {
    	super();
    	this.roleRepository = roleRepository;
    }
    public Iterable<Task> listAllTasks() {
        return repo.findAll();
    }


public void saveTask(Task task) {
repo.save(task);
}
public void UpdateTask(Task task) {
	Task t = repo.findById(task.getId()).get();
	t.setName(task.getName());
	t.setStartDate(task.getStartDate());
	t.setEndDate(task.getEndDate());
	t.setDescription(task.getDescription());
	t.setEmail(task.getEmail());
	t.setSeverity(task.getSeverity());
	repo.save(t);
}
public Task GetTaskById(Integer id) throws TaskNotFoundException {
	return repo.findById(id).get();
}
public User GetUserByName(String name) {
    User foundUser = userRepository.findByUserName(name);
    return foundUser;
}
public void deleteTask(Task task) {
repo.delete(task);
}
public void saveUser(User user) {
	userRepository.save(user);
}
}
