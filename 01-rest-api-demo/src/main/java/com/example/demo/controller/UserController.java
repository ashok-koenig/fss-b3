package com.example.demo.controller;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/users")
public class UserController {

    @GetMapping
    public String getAllUsers(){
        return "List of Users";
    }

    @GetMapping("/{id}")
    public String getUserById(@PathVariable Long id){
        return "User detail with id "+ id;
    }

    @GetMapping("/search")
    public String searchUser(@RequestParam(name = "key") String key){
        return "Search Result of Request param: "+key;
    }

    @PostMapping
    public String createUser(@RequestBody String newUser){
        return "User create with request body: "+ newUser;
    }

    @PutMapping("/{id}")
    public String updateUser(@PathVariable Long id, @RequestBody String editedUser){
        return "User with id: "+ id + ", updated with request body: "+ editedUser;
    }

    @DeleteMapping("/{id}")
    public String deleteUserById(@PathVariable Long id){
        return "User deleted with id: "+ id;
    }
}
