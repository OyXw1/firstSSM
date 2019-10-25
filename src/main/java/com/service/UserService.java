package com.service;

import com.entity.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {
    User login(User user);
    void updateUser(User user);
    void addUser(User user);
    List<User> selectAll();
    void deleteUser(int id);
}
