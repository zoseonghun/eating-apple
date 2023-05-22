package com.trifling.things.controller;

import com.trifling.things.dto.page.PageMaker;
import com.trifling.things.dto.page.Search;
import com.trifling.things.dto.response.MainListResponseDTO;
import com.trifling.things.dto.response.MovieListResponseDTO;
import com.trifling.things.dto.response.MyInfoResponseDTO;
import com.trifling.things.dto.request.UserModifyRequestDTO;
import com.trifling.things.dto.request.LoginRequestDTO;
import com.trifling.things.dto.request.SignUpRequestDTO;
import com.trifling.things.entity.user.Interest;
import com.trifling.things.repository.Review;
import com.trifling.things.service.LoginResult;
import com.trifling.things.service.UserService;
import com.trifling.things.util.LoginUtil;
import com.trifling.things.util.upload.FileUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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


    @Value("${file.upload.root-path}")
    private String rootPath;

    //로그인 양식 요청
    @GetMapping("/login")
    public String login() {
        log.info("/user/login GET - forwarding to jsp");
        return "user/login"; // 로그인 페이지로 이동
    }
    //회원가입
    // 회원 가입 요청
    // 회원가입 양식 요청
    @GetMapping("/sign-up")
    public String signUp() {
        log.info("/user/sign-up GET - forwarding to jsp");
        return "user/sign-up"; // 회원가입 페이지로 이동
    }

    // 회원가입 처리 요청
    @PostMapping("/sign-up")
    public String signUpUser(@ModelAttribute SignUpRequestDTO dto) {
        //boolean flag = userService.join(dto);
        log.info("/user/sign-up POST - !!");
        log.info("dto : {}", dto);

        // 프로필 사진 처리 추가 해야함
        // 리퀘스트 dto에서 사진정보 변수화(리퀘스트 dto 추가 해줘야함)
        MultipartFile profileImage = dto.getProfileImage();
        // 프로필사진 최종 이름겸주소
        String savePath = null;
        // 회원가입떄 프로필 사진을 첨부한경우
        if (!profileImage.isEmpty()) {
            // 실제 로컬 스토리지에 파일을 업로드하는 로직
            savePath = FileUtil.uploadFile(profileImage, rootPath);
        }
        // 추가 flag라 위에 flag 삭제해야함
        boolean flag = userService.join(dto, savePath);


        if (flag) {


            return "redirect:/movies/list"; // 메인페이지 이동, 수정확인필요

        } else {
            return "user/sign-up"; // 회원 가입 실패 페이지로 이동
        }

    }


    // 아이디, 이메일 중복검사
    // 비동기 요청 처리
    @GetMapping("/check")
    @ResponseBody
    public ResponseEntity<?> check(String type, String keyword) {

        log.info("/user/sign-up check - !!", type, keyword);
        log.info(type);
        log.info(keyword);
        boolean flag = userService.checkSignUpValue(type, keyword);
        return ResponseEntity.ok().body(flag);
    }


    // 로그인 양식 요청
//    @GetMapping("/login")
//    public String signIn(HttpServletRequest request) {
//        log.info("/user/sign-in GET - forwarding to jsp");
//        String referer = request.getHeader("Referer");
//        log.info("referer : {}", referer);
//
//        return "user/login";
//    }

    // 로그인 검증 요청 --로그인?
    @PostMapping("/sign-in")
    public String signIn(LoginRequestDTO dto, HttpServletRequest request, RedirectAttributes ra) {
        log.info("/user/sign-in POST: {}", dto);


        LoginResult result = userService.authenticate(dto);


        // 로그인 성공시
        if (result == SUCCESS) {
            // 서버에서 세션에 로그인 정보를 저장
            userService.maintainLoginState(request.getSession(), dto.getUserId());

            return "redirect:/movies/list";
        }

        // 1회용
        ra.addAttribute("msg", result);

        // 로그인 실패시
        return "redirect:/user/login";
    }
// find user 정보 찾기 -- 필요한가?
//    @GetMapping("/find/{userId}")
//    public String findUser(@PathVariable String userId, Model model) {
//        User user = userService.findUser(userId);
//        if (user != null) {
//            model.addAttribute("user", user);
//            return ""; // 사용자 정보 페이지로 이동
//        } else {
//            return ""; // 사용자를 찾지 못한 경우의 페이지로 이동
//        }
//    }


    //정보수정 -modify
    @PutMapping("/modify/{userId}")
    public ResponseEntity<String> modifyUser(@PathVariable String userId,
                                             @RequestBody UserModifyRequestDTO requestDTO) {
        requestDTO.setUserId(userId);
        boolean modifySuccess = userService.modify(requestDTO);

        if (modifySuccess) {
            return ResponseEntity.ok("정보수정이 완료되었습니다");
        } else {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("다시 입력해주세요");
        }
    }


    //영화찜하기
    @GetMapping("/interest/{userNum}")
    public String getInterestList(@PathVariable int userNum, Model model) {
        List<Interest> interestList = userService.myInterestList(userNum);

        log.info("interest {}{}{}", interestList);
        model.addAttribute("interestList", interestList);
        return "user/mypage";
    }


    //리뷰보기
    @GetMapping("/review/{userNum}")
    public String getMyReviewList(@PathVariable int userNum, Model model) {
        List<Review> reviewList = userService.myReviewList(userNum);
        log.info("reviewList: {}", reviewList);
        model.addAttribute("reviews", reviewList);

        return "user/mypage";
    }


    //마이페이지 --로그인 연동시
//    @GetMapping("/mypage")
//    public String getMyPage(@PathVariable int userNum, Model model) {
//        List<MyInfoResponseDTO> mypage = userService.getMypage(userNum);
//        model.addAttribute("mypage", mypage);
//        return "user/mypage";
//    }


    //마이페이지 -- 테스트 --userid, userNum 맞춰야함

    @GetMapping("/mypage")
    public String getMypage(Model model) {
        String userId = "유저1"; // 임시로 설정한 사용자의 userNum 값
        List<MyInfoResponseDTO> mypage = userService.getMypage(userId);
        model.addAttribute("mypage", mypage);
        log.info("lll: {} ", mypage);
        return "user/mypage";
    }



    // 로그아웃 요청 처리
    @GetMapping("/sign-out")
    public String signOut(
            HttpServletRequest request,
            HttpServletResponse response
    ) {

        HttpSession session = request.getSession();

        // 로그인 중인지 확인
        if (LoginUtil.isLogin(session)) {

            // 세션에서 login정보를 제거
            session.removeAttribute("login");

            // 세션을 아예 초기화 (세션만료 시간 초기화)
            session.invalidate();
            return "redirect:/movies/list";
        }

        return "redirect:/user/sign-in";
    }


}
