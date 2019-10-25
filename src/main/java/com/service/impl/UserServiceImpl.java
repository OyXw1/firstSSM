package com.service.impl;

import com.entity.User;
import com.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.service.UserService;

import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserService {

    @Autowired
    public UserMapper userMapper;
    @Override
    public User login(User user) {
        return userMapper.selectLogin(user);
    }

    @Override
    public void updateUser(User user) {
        userMapper.updateUser(user);
    }

    @Override
    public void addUser(User user) {
        userMapper.addUser(user);
    }

    @Override
    public List<User> selectAll() {
        return userMapper.selectAllUser();
    }

    @Override
    public void deleteUser(int id) {
        userMapper.deleteUser(id);
    }
}
