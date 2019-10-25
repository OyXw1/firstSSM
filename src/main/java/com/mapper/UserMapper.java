package com.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.entity.User;

@Repository
public interface UserMapper {
	User selectLogin(User user);

	List<User> selectAllUser();

	void updateUser(User user);

	void deleteUser(int id);

	void addUser(User user);
}
