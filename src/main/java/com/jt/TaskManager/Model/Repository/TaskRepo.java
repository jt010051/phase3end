package com.jt.TaskManager.Model.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jt.TaskManager.Model.Task;
@Repository("task")
public interface TaskRepo extends JpaRepository<Task, Integer> {

}
