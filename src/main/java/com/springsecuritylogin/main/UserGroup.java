package com.springsecuritylogin.main;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class UserGroup {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long groupId;
		
	private String groupName;
	
	@ManyToOne
	@JoinColumn(name = "creator_id")
	private User user;

	public UserGroup() {
	}
	
	public Long getGroupId() {
		return groupId;
	}

	public void setGroupId(Long groupId) {
		this.groupId = groupId;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
	
	

}
