package com.po.konkurs.repository;

import com.po.konkurs.model.UserModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Transactional
@Repository("userRepository")
public interface UserRepository extends JpaRepository<UserModel, Long> {
    boolean existsByUsername(String username);

    UserModel findUserModelByUsername(String username);
}
