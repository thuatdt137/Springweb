package com.springDemo.Springweb.repository;

import org.springframework.stereotype.Repository;

import com.springDemo.Springweb.models.Cart;
import com.springDemo.Springweb.models.User;

import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

@Repository
public interface CartRepository extends JpaRepository<Cart, Long> {
    Cart findByUser(User user);
}
