package com.jt.TaskManager.Model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "task")
public class Task {
	@Column(name = "id")
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
private int id;
	@Column(name="name")
private String name;
@Column(name ="start_date")
private String startDate;
@Column(name ="end_date")

private String endDate;
private String description;
private String email;
private String severity;
@ManyToOne
private User user;

public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}
public Task() {
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}


public String getStartDate() {
	return startDate;
}
public void setStartDate(String startDate) {
	this.startDate = startDate;
}
public String getEndDate() {
	return endDate;
}
public void setEndDate(String endDate) {
	this.endDate = endDate;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getSeverity() {
	return severity;
}
public void setSeverity(String severity) {
	this.severity = severity;
}
public Task(int id, String name, String startDate, String endDate, String description, String email, String severity) {
	super();
	this.id = id;
	this.name = name;
	this.startDate = startDate;
	this.endDate = endDate;
	this.description = description;
	this.email = email;
	this.severity = severity;
}
@Override
public String toString() {
	return "Task [id=" + id + ", name=" + name + ", startDate=" + startDate + ", endDate=" + endDate + ", description="
			+ description + ", email=" + email + ", severity=" + severity + "]";
}

}
