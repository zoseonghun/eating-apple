package com.trifling.things.controller;

import com.trifling.things.dto.response.UserModifyResponseDTO;
import com.trifling.things.dto.request.LoginRequestDTO;
import com.trifling.things.dto.request.SignUpRequestDTO;
import com.trifling.things.entity.user.Interest;
import com.trifling.things.entity.user.User;
import com.trifling.things.repository.Review;
import com.trifling.things.service.LoginResult;
import com.trifling.things.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

import static com.trifling.things.service.LoginResult.SUCCESS;


/*
user 회원가입 + 로그인 기능

        controller
        - user/mypage - 화면에 user entity 모두 보여질 예정(등급, 포인트까지)
        d - user/interest - 찜하기 - 영화찜한 목록list 보여지기
        - user/myReview - 내가 쓴 리뷰글 보여지기
       d - user/modify - 수정 - 비번, 이메일만 수정가능하게
*/

@Controller
@RequiredArgsConstructor
@RequestMapping("/user")
@Slf4j
public class UserController {
    @Autowired
    private final UserService userService;

    //회원가입
    // 회원 가입 요청
    // 회원가입 양식 요청
    @GetMapping("/login")
    public String signUp() {
        log.info("/user/sign-up GET - forwarding to jsp");
        return "user/login"; // 회원가입 폼이 있는 jsp 연결

    }

    // 회원가입 처리 요청
    @PatchMapping("/sign-up")
    public void signUp(SignUpRequestDTO dto) {
        log.info("/user/sign-up POST ! - {}", dto);


        boolean flag = userService.join(dto);
    }

    /*
        // 아이디, 이메일 중복검사
        // 비동기 요청 처리
        @GetMapping("/check")
        @ResponseBody
        public ResponseEntity<?> check(String type, String keyword) {

            boolean flag = userService.checkSignUpValue(type, keyword);
            return ResponseEntity.ok().body(flag);
        }


        // 로그인 양식 요청
        @GetMapping("/sign-in")
        public String signIn() {

            return "user/sign-in";
        }

        // 로그인 검증 요청 --로그인?
        @PostMapping("/sign/-in")
        public String signIn(LoginRequestDTO dto, RedirectAttributes ra) {

            LoginResult result = userService.authenticate(dto);

            // 로그인 성공시
            if (result == SUCCESS) {
                return "redirect:/";
            }

            // 1회용
            ra.addAttribute("msg", result);

            // 로그인 실패시
            return "redirect:/user/login";
        }

    */
    //정보수정 -modify
    @PostMapping("/modify")
    public String modify(UserModifyResponseDTO dto) {
        System.out.println("/user/modify : POST");
        userService.modify(dto);
        return ""; //확인필요
    }

    //영화찜하기
    @GetMapping("/interest")
    public String myInterestList(
            @PathVariable int userNum,
            @PathVariable int movieNum,
            Model model) {
        List<Interest> interestList = userService.myInterestList(userNum, movieNum);
        model.addAttribute("interestList", interestList);
        return "";
    }

    //내가 쓴 리뷰 보기
    @GetMapping("/review")
    public String myReviewList(
            int userNum, Model model) {
        List<Review> myReviewList = userService.myReviewList(userNum);
        model.addAttribute("myReviewList", myReviewList);
        return "";
    }

    //마이페이지
    @GetMapping("/mypage")
    public String getMyPage(@PathVariable String userId, Model model) {
        User mypage = userService.getMypage(userId);
        model.addAttribute("mypage", mypage);
        return "user/mypage";
    }


    @GetMapping("/userlist")
    public ModelAndView userlist() {
        ModelAndView mv = new ModelAndView("user/userlist");
        List<User> list = userService.userList();
        mv.addObject("list", list);
        return mv;
    }


}
