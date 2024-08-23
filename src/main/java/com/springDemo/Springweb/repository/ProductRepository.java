package com.springDemo.Springweb.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springDemo.Springweb.models.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    Product findOneById(long id);

    Product save(Product product);
}
