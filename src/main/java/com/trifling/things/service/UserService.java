package com.trifling.things.service;

import com.trifling.things.dto.response.UserModifyResponseDTO;
import com.trifling.things.dto.request.LoginRequestDTO;
import com.trifling.things.dto.request.SignUpRequestDTO;
import com.trifling.things.entity.user.Interest;
import com.trifling.things.entity.user.User;
import com.trifling.things.repository.Review;
import com.trifling.things.repository.UserMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import java.util.List;

//import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import static com.trifling.things.service.LoginResult.*;


@Service
@RequiredArgsConstructor
@Slf4j
public class UserService {
    private final UserMapper userMapper;
//    private final PasswordEncoder encoder;



    public boolean join(SignUpRequestDTO dto) {
        User user = User.builder()
                .userId(dto.getUserId())
                .userPassword(dto.getPassword()) //encoder.encode
                .userEmail(dto.getEmail())
                .build();

//         매퍼에게 회원정보 전달해서 저장명령
        userMapper.save(user);
        return true;
    }

    public boolean modify(UserModifyResponseDTO dto) {
        User user = User.builder().
                userPassword(dto.getPassword())
                .userEmail(dto.getEmail())
                .build();

        boolean flag = userMapper.modify(user);

        return true;
    }

/*
    // 중복검사 서비스 처리
    public boolean checkSignUpValue(String type, String keyword) {

        int flagNum = userMapper.isDuplicate(type, keyword);

        return flagNum == 1;
    }

    // 로그인 검증
    public LoginResult authenticate(LoginRequestDTO dto) {

        User foundUser = userMapper.findUser(dto.getAccount());

        // 회원가입 여부 확인
        if (foundUser == null) {
            return NO_ACC;
        }
        // 비밀번호 일치 확인
        if (encoder.matches(dto.getPassword(), foundUser.getUserPassword())) {
            return NO_PW;
        }

        return SUCCESS;
    }

 */
    //영화 찜하기 기능
    public List<Interest> myInterestList(int userNum, int moiveNum) {
        List<Interest> interestUser = userMapper.interestList(userNum, moiveNum);
        return interestUser;
    }

    //내가 작성한 리뷰 보기
    public List<Review> myReviewList(int userNum){
        List<Review> reviews = userMapper.myReviewList(userNum);
        return reviews;
    }

    //마이페이지
    public User getMypage(String userId) {
        return userMapper.myInfo(userId);
    }

    //회원정보 조회
    public List<User> userList() {
        return userMapper.userList();
    }
}