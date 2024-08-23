package com.springDemo.Springweb.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springDemo.Springweb.models.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
    List<Role> findById(long id);

    List<Role> findByName(String name);

}
