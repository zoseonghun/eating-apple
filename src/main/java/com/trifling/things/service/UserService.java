package com.trifling.things.service;

import com.trifling.things.dto.SignUpDTO;
import com.trifling.things.entity.Interest;
import com.trifling.things.entity.User;
import com.trifling.things.repository.UserMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import java.util.List;

import org.springframework.stereotype.Service;


@Service
@RequiredArgsConstructor
@Slf4j
public class UserService {
    private final UserMapper userMapper;
//private final Password encoder; 확인필요


    public boolean join(SignUpDTO dto) {
        User user = User.builder()
                .userId(dto.getUserId())
                .password(dto.getPassword()) //encoder.encode
                .email(dto.getEmail())
                .build();

//         매퍼에게 회원정보 전달해서 저장명령
        userMapper.save(user);
        return true;
    }


    public List<User> userList() {
        return null;
    }



    //영화 찜하기 기능
    public List<Interest> getInterestList(String type, int movieNum) {
        List<Interest> interestUser = userMapper.interestList(type, movieNum);
        return interestUser;


    }
}