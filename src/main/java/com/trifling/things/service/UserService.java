package com.trifling.things.service;

import com.trifling.things.dto.request.LoginRequestDTO;
import com.trifling.things.dto.request.SignUpRequestDTO;
import com.trifling.things.dto.response.LoginUserResponseDTO;
import com.trifling.things.dto.response.MyInfoResponseDTO;
//import com.trifling.things.dto.response.UserModifyResponseDTO;
import com.trifling.things.entity.user.Gender;
import com.trifling.things.dto.request.UserModifyRequestDTO;

import com.trifling.things.entity.user.Interest;
import com.trifling.things.entity.user.User;
import com.trifling.things.repository.Review;
import com.trifling.things.repository.UserMapper;
import com.trifling.things.util.LoginUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

import static com.trifling.things.service.LoginResult.*;


@Service
@RequiredArgsConstructor
@Slf4j
public class UserService {
    private final UserMapper userMapper;
    private final PasswordEncoder encoder;



    public boolean join(SignUpRequestDTO dto, String savePath) {
        User user = User.builder()
                .userId(dto.getUserId())
                .userPassword(encoder.encode(dto.getUserPassword())) //encoder.encode
                .userEmail(dto.getUserEmail())
                .userGender(dto.getUserGender())
                .profileImage(savePath)
                .build();
//        매퍼에게 회원정보 전달해서 저장명령
        userMapper.save(user);
        return true;
    }


    public User findUser(String userId) {
        return userMapper.findUser(userId);
    }

    public boolean modify(UserModifyRequestDTO dto) {

        User user = User.builder().
                userId(dto.getUserId())
                .userPassword(dto.getUserPassword())
                .userEmail(dto.getUserEmail())
                .build();

        boolean flag = userMapper.modify(user);
        return flag;
    }



    // 중복검사 서비스 처리
    public boolean checkSignUpValue(String type, String keyword) {
        log.info(type);
        log.info(keyword);

        int flagNum = userMapper.isDuplicate(type, keyword);
log.info(String.valueOf(flagNum));
        return flagNum == 1;
    }

    // 로그인 검증
    public LoginResult authenticate(LoginRequestDTO dto) {

        User foundUser = userMapper.findUser(dto.getUserId());
        log.info("dto:{}",foundUser.getUserPassword());

//        log.info("입력 비밀번호 {} : ", dto.getUserPassword());
//        log.info("데이터베이스 비밀번호 {} : ", foundUser.getUserPassword());
        // 회원가입 여부 확인
        if (foundUser == null) {
            log.info("account unmatch");
            return NO_ACC;
        }
        // 비밀번호 일치 확인
        if (!encoder.matches(dto.getUserPassword(), foundUser.getUserPassword())) {

           log.info("password unmatch");

            return NO_PW;
        }

        return SUCCESS;
    }


//내가 작성한 리뷰 보기
public List<Review> myReviewList(int userNum){
    List<Review> reviews = userMapper.myReviewList(userNum);
    return reviews;
}

    //영화 찜하기 기능
    public List<Interest> myInterestList( int userNum) {
        List<Interest> interestUser = userMapper.interestList(userNum);
        return interestUser;
    }



    //마이페이지
    public   List<MyInfoResponseDTO> getMypage(int userNum){
        return userMapper.myInfo(userNum);
    }


    public void maintainLoginState(HttpSession session, String userId) {

        // 로그인 성공하면 세션에 로그인한 회원의 정보들을 저장
        User user = findUser(userId);

        LoginUserResponseDTO dto = LoginUserResponseDTO.builder()
                .susernum(user.getUserNum())
                .suserid(user.getUserId())
                .suserage(user.getUserAge())
                .susergender(user.getUserGender().toString())
                .suserpoint(user.getUserPoint())
                .sprofileimage(user.getProfileImage())
                .susergrade(user.getUserGrade().toString())
                .build();
log.info("dto:{}",dto);
        // 세션에 유저 정보 저장
        session.setAttribute(LoginUtil.LOGIN_KEY, dto);
    }
}