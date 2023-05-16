package com.trifling.things.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/movies")
@Slf4j
public class TestController {
   @GetMapping("/test")
    public String test(){
        System.out.println("GET list");
        return "movies/list";
    }

    @GetMapping("/test2")
    public String test2(){
        System.out.println("GET detail");
        return "movies/detail";
    }
    @GetMapping("/test3")
    public String test3(){
        System.out.println("GET index");
        return "index";
    }
    @GetMapping("/test4")
    public String test4(){
        System.out.println("GET sign-inup");
        return "movies/sign-inup";
    }
}
