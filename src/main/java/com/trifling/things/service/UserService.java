package com.trifling.things.service;

import com.trifling.things.dto.JoinDTO;
import com.trifling.things.entity.User;
import com.trifling.things.repository.UserMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;


@Service
@RequiredArgsConstructor
@Slf4j
public class UserService {
    private final UserMapper userMapper;
//private final Password encoder; 확인필요


    public boolean join(JoinDTO dto) {
        User member = User.builder()
                .userId(dto.getUserId())
                .password(dto.getPassword()) //encoder.encode
                .email(dto.getEmail())
                .build();

        // 매퍼에게 회원정보 전달해서 저장명령
      //  UserMapper.save(member);
        return true;


    }
}
