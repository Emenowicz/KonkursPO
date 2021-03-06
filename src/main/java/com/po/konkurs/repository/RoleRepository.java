package com.po.konkurs.repository;

import com.po.konkurs.model.RoleModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;


@Transactional
@Repository("roleRepository")
public interface RoleRepository extends JpaRepository<RoleModel, Integer> {
    RoleModel findByRole(String role);
}

