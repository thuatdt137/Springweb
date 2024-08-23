package com.springDemo.Springweb.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.springDemo.Springweb.models.Category;
import com.springDemo.Springweb.models.Product;
import com.springDemo.Springweb.service.CategoryService;
import com.springDemo.Springweb.service.ProductService;
import com.springDemo.Springweb.service.UploadService;

import jakarta.validation.Valid;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ProductController {
    private final ProductService productService;
    private final UploadService uploadService;
    private final CategoryService categoryService;

    public ProductController(ProductService productService,
            UploadService uploadService, CategoryService categoryService) {
        this.productService = productService;
        this.uploadService = uploadService;
        this.categoryService = categoryService;
    }

    @GetMapping("/admin/product")
    public String getProductListPage(Model model) {
        model.addAttribute("products", this.productService.getAllProducts());
        return "admin/product/product-list";
    }

    @PostMapping("/admin/product/create")
    public String postMethodName(Model model,
            @ModelAttribute("newProduct") @Valid Product product,
            BindingResult newProductBindingResult,
            @RequestParam("productFile") MultipartFile file) {

        List<FieldError> errors = newProductBindingResult.getFieldErrors();

        for (FieldError error : errors) {
            System.out.println(">>>>" + error.getField() + " - " + error.getDefaultMessage());
        }

        if (newProductBindingResult.hasErrors()) {
            return "/admin/product/product-new";
        }

        product.setImage(this.uploadService.handleSaveUploadFile(file, "products"));
        this.productService.handleSaveProduct(product);
        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/create")
    public String getCreateProductPage(Model model) {
        model.addAttribute("newProduct", new Product());
        return "admin/product/product-new";
    }

    @GetMapping("/admin/product/{productId}")
    public String getProductDetailPage(Model model,
            @PathVariable long productId) {
        model.addAttribute("updateProduct", this.productService.getProductById(productId));
        return "/admin/product/product-details";
    }

    @ModelAttribute("categories")
    public List<Category> getCategories() {
        return this.categoryService.getAllCategories();
    }

    @PostMapping(value = "/admin/product/update")
    public String postUpdateProduct(Model model,
            @ModelAttribute("updateProduct") @Valid Product product,
            BindingResult newProductBindingResult,
            @RequestParam("productFile") MultipartFile file) {
        List<FieldError> errors = newProductBindingResult.getFieldErrors();

        for (FieldError error : errors) {
            System.out.println(">>>>" + error.getField() + " - " + error.getDefaultMessage());
        }

        if (newProductBindingResult.hasErrors()) {
            return "/admin/product/product-details";
        }
        long size = file.getSize();
        if (size != 0) {
            product.setImage(this.uploadService.handleSaveUploadFile(file, "products"));
        } else {
            product.setImage(this.productService.getProductById(product.getId()).getImage());
        }
        this.productService.handleSaveProduct(product);
        return "redirect:/admin/product";
    }

}
