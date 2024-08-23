package com.springDemo.Springweb.controller.admin;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.ParseException;
import java.util.Arrays;
import java.util.List;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import com.springDemo.Springweb.models.Role;
import com.springDemo.Springweb.models.User;
import com.springDemo.Springweb.service.RoleService;
import com.springDemo.Springweb.service.UploadService;
import com.springDemo.Springweb.service.UserService;

import jakarta.servlet.ServletContext;
import jakarta.validation.Valid;

import org.springframework.web.multipart.MultipartFile;

@Controller
public class UserController {
    // DI : dependency injection
    private final UserService userService;
    private final RoleService roleService;
    private final PasswordEncoder passwordEncoder;
    private final UploadService uploadService;

    public UserController(UserService userService, RoleService roleService,
            PasswordEncoder passwordEncoder, UploadService uploadService) {
        this.userService = userService;
        this.roleService = roleService;
        this.passwordEncoder = passwordEncoder;
        this.uploadService = uploadService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        List<User> listUser = this.userService.getAllUsers();
        System.out.println(listUser);
        return "hello";
    }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        List<User> users = this.userService.getAllUsers();
        model.addAttribute("newUser", new User());
        model.addAttribute("users", users);
        return "admin/user/user-list";
    }

    @RequestMapping("/admin/user/{userId}")
    public String getUserDetailPage(Model model, @PathVariable long userId) {
        model.addAttribute("updateUser", this.userService.getUserById(userId));
        return "admin/user/user-details";
    }

    @GetMapping("/admin/user/create") // get
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/user-new";
    }

    @PostMapping("/admin/user/create")
    public String createUserPage(Model model,
            @ModelAttribute("newUser") @Valid User user,
            BindingResult newUserBindingResult) {
        List<FieldError> errors = newUserBindingResult.getFieldErrors();

        for (FieldError error : errors) {
            System.out.println(">>>>" + error.getField() + " - " + error.getDefaultMessage());
        }

        if (newUserBindingResult.hasErrors()) {
            return "admin/user/user-new";
        }

        user.setStatus(1);
        String hashPassword = this.passwordEncoder.encode(user.getPassword());
        user.setPassword(hashPassword);
        this.userService.handleSaveUser(user);
        return "redirect:/admin/user";
    }

    @PostMapping(value = "/admin/user/update")
    public String postUpdateUser(Model model,
            @ModelAttribute("updateUser") @Valid User user,
            BindingResult newUserBindingResult,
            @RequestParam("avatarFile") MultipartFile file) {
        List<FieldError> errors = newUserBindingResult.getFieldErrors();

        for (FieldError error : errors) {
            System.out.println(">>>>" + error.getField() + " - " + error.getDefaultMessage());
        }

        if (newUserBindingResult.hasErrors()) {
            return "/admin/user/user-details";
        }

        String name = file.getOriginalFilename();
        long size = file.getSize();
        if (size != 0) {
            user.setAvatar(this.uploadService.handleSaveUploadFile(file, "avatars"));
        } else {
            user.setAvatar(this.userService.getUserById(user.getId()).getAvatar());
        }
        user.setPassword(this.userService.getUserById(user.getId()).getPassword());
        this.userService.handleSaveUser(user);
        return "redirect:/admin/user";
    }

    @ModelAttribute("roles")
    public List<Role> populateRoles() {
        return this.roleService.getAllRoles();
    }

}
