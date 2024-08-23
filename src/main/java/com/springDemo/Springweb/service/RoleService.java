package com.springDemo.Springweb.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.springDemo.Springweb.models.Role;
import com.springDemo.Springweb.repository.RoleRepository;

@Service
public class RoleService {
    private final RoleRepository roleRepository;

    public RoleService(RoleRepository roleRepository) {
        this.roleRepository = roleRepository;
    }

    public List<Role> getAllRoles() {
        return this.roleRepository.findAll();
    }

    public Role getRole(long id) {
        return this.roleRepository.findById(id).get(0);
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name).get(0);
    }
}
