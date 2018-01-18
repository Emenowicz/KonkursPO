package com.po.konkurs.repository;

import com.po.konkurs.model.RoleModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository("roleRepository")
public interface RoleDao extends JpaRepository<RoleModel, Integer> {
    RoleModel findByRole(String role);
}

