package com.po.konkurs.repository;

import com.po.konkurs.model.UserModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Transactional
@Repository("userRepository")
public interface UserDao extends JpaRepository<UserModel, Long> {
    public UserModel findOneByEmail(String email);
}
