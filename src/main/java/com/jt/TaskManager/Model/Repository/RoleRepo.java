package com.jt.TaskManager.Model.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jt.TaskManager.Model.Role;

@Repository(value ="role")
public interface RoleRepo extends JpaRepository<Role, Integer>{
    Role findByRole(String role);

}
