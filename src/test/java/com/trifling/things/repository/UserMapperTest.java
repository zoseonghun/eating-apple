package com.trifling.things.repository;

import com.trifling.things.entity.Gender;
import com.trifling.things.entity.User;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class UserMapperTest {

@Autowired
    UserMapper userMapper;

@Test
    @DisplayName("회원의 아이디, 비번, 이메일, 성별, 나이를 받아 회원가입을 신청한다")
    void testJoin(){
    User.builder()
            .userId("abc1111")
            .password("abc1111")
            .email("abc123@naver.com")
            .gender(Gender.FEMALE)
            .age(15);
}
}