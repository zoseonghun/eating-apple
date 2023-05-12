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

/*
user 회원가입 + 로그인 기능

        controller
        - user/mypage - 화면에 user entity 모두 보여질 예정(등급, 포인트까지)
        - user/interest - 찜하기 - 영화찜한 목록list 보여지기
        - user/myReview - 내가 쓴 리뷰글 보여지기
        - user/modify - 수정 - 비번, 이메일만 수정가능하게
*/

@Controller
@RequiredArgsConstructor
@RequestMapping("/user")
@Slf4j
public class UserController {
    @Autowired
    private final UserService userService;


    //회원조회
    @GetMapping("/userlist")
    public String userlist(Model model) {
        List<User> list = userService.userList();
        model.addAttribute("list", list);
        return "user/userlist";
    }


//정보수정 작성필요



    //영화찜하기
    @GetMapping("/interest/{type}/{num}")
    public String getInterestList(
            @PathVariable String userId,
            @PathVariable int movieNum,
            Model model) {
        List<Interest> interestList = userService.getInterestList(userId, movieNum);
        model.addAttribute("interestList", interestList);
        return "interestListPage";
    }


}
