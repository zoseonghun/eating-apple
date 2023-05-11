package com.trifling.things.controller;

import com.trifling.things.entity.Interest;
import com.trifling.things.entity.User;
import com.trifling.things.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/user")
@Slf4j
public class UserController {
    @Autowired
    private final UserService userService;

    @GetMapping("/userlist")
    public String userlist(Model model) {
        List<User> list = userService.userList();
        model.addAttribute("list", list);
        return "user/userlist";
    }




    //영화찜하기
    @GetMapping("/interest/{type}/{num}")
    public String getInterestList(
            @PathVariable String type,
            @PathVariable int movieNum,
            Model model) {
        List<Interest> interestList = userService.getInterestList(type, movieNum);
        model.addAttribute("interestList", interestList);
        return "interestListPage";
    }


}
