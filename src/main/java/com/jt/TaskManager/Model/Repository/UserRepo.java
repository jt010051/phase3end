package com.jt.TaskManager.Model.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jt.TaskManager.Model.User;
@Repository("user")
public interface UserRepo extends JpaRepository<User, Integer>{
    User findByUserName(String userName);

}
