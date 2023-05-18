package com.trifling.things.controller;

import com.trifling.things.dto.response.MyInfoResponseDTO;
import com.trifling.things.dto.response.UserModifyResponseDTO;
import com.trifling.things.dto.request.LoginRequestDTO;
import com.trifling.things.dto.request.SignUpRequestDTO;
import com.trifling.things.entity.user.Gender;
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
    public String login() {
        log.info("/user/login GET - forwarding to jsp");
        return "user/login"; // 회원가입 폼이 있는 jsp 연결

    }

    // 회원가입 처리 요청
    @PostMapping("/login")
    public void signUp(SignUpRequestDTO dto) {
        log.info("/user/login POST ! - {}", dto);
        boolean flag = userService.join(dto);

    }

        // 아이디, 이메일 중복검사
        // 비동기 요청 처리
        @GetMapping("/check")
        @ResponseBody
        public ResponseEntity<?> check(String type, String keyword) {

            boolean flag = userService.checkSignUpValue(type, keyword);
            return ResponseEntity.ok().body(flag);
        }

        // 로그인 검증 요청 --로그인?
        @PostMapping("")
        public String signIn(LoginRequestDTO dto, RedirectAttributes ra) {

            LoginResult result = userService.authenticate(dto);

            // 로그인 성공시
            if (result == SUCCESS) {
                return "redirect:/movies/list";
            }

            // 1회용
            ra.addAttribute("msg", result);

            // 로그인 실패시
            return "redirect:/user/login";
        }
    public void join(SignUpRequestDTO dto, Gender gender) {
        // 회원가입 처리 로직에서 Gender 값을 DB에 저장하는 작업을 수행
        // userRepository를 사용하여 사용자를 생성하고, 생성된 사용자에 대한 Gender 값을 설정

        User user = new User();
        user.setUserId(dto.getUserId());
        user.setUserPassword(dto.getUserPassword());
//        user.setGender(gender);

//        userRepository.save(user);
    }

    //정보수정 -modify
    @PostMapping("/modify")
    public String modify(UserModifyResponseDTO dto) {
        System.out.println("/user/modify : POST");
        userService.modify(dto);
        return "redirect:/modify"; //확인필요
    }

    //영화찜하기
    @GetMapping("/interest")
    public String myInterestList(
            @PathVariable int userNum,
            @PathVariable int movieNum,
            Model model) {
        List<Interest> interestList = userService.myInterestList(userNum, movieNum);
        model.addAttribute("interestList", interestList);
        return "redirect:/interest";
    }

    //내가 쓴 리뷰 보기
    @GetMapping("/review")
    public String myReviewList(
            int userNum, Model model) {
        List<Review> myReviewList = userService.myReviewList(userNum);
        model.addAttribute("myReviewList", myReviewList);
        return ""; //영화세부페이지
    }

    //마이페이지
    @GetMapping("/mypage")
    public String getMyPage(@PathVariable int userNum, Model model) {
        List<MyInfoResponseDTO> mypage = userService.getMypage(userNum);
        model.addAttribute("mypage", mypage);
        return "redirect:/interest";
    }


    @GetMapping("/userlist")
    public ModelAndView userlist() {
        ModelAndView mv = new ModelAndView("user/userlist");
        List<User> list = userService.userList();
        mv.addObject("list", list);
        return mv;
    }


}
