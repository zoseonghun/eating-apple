package com.trifling.things.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/movie")
@Slf4j
public class TestController {
   @GetMapping("/test")
    public String test(){
        System.out.println("getin");
        return "movies/test";
    }
}
