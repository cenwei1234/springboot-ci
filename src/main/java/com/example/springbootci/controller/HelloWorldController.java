package com.example.springbootci.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

    @RequestMapping("/hello")
    private String HelloWorld(){
        return "cenwei-1232321";
    }

}
