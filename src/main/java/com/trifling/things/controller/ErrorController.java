package com.trifling.things.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

@RequiredArgsConstructor
@RequestMapping("/error")
@Slf4j
public class ErrorController {
   @GetMapping("/access-deny")
    public String deny(){
        log.info("Access-Deny!!");
        return "error/access-deny";
    }


}
