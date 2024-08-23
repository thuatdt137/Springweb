package com.springDemo.Springweb.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.springDemo.Springweb.models.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User user);

    List<User> findOneByEmail(String email);

    User findOneById(long id);

    boolean existsByEmail(String email);

    User findByEmail(String email);
}
