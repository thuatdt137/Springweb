package com.springDemo.Springweb.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.springDemo.Springweb.models.Category;
import com.springDemo.Springweb.repository.CategoryRepository;

@Service
public class CategoryService {
    private final CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public List<Category> getAllCategories() {
        return this.categoryRepository.findAll();
    }
}
