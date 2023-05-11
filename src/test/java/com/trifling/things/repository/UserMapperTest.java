package com.trifling.things.repository;

import com.trifling.things.entity.Gender;
import com.trifling.things.entity.User;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.lang.annotation.Documented;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;


@SpringBootTest
class UserMapperTest {

    @Autowired
    UserMapper userMapper;

    @Test
    @DisplayName("회원가입에 성공해야한다")
    void testJoin() {
        User user = User.builder()
                .userId("def123")
                .password("def123@")
                .email("def@abc.com")
                .gender(Gender.MALE)
                .age(28)
                .build();

        boolean flag = userMapper.save(user);
        assert (flag);
    }

    @Test
    @DisplayName("유저의 id 값을 조회하면 관련된 id 값의 정보가 나와야한다")
    void testfinduser() {
        //give
        String userid = "abc1111";

        //when
        User findUser = userMapper.findUser(userid);

        //then
        System.out.println("findUser : " + findUser);
        assertEquals("abc1111", findUser.getUserId());

    }

//    수정필요
    @Test
    @DisplayName("유저의 id 값을 확인하면 유저의 기본 정보를 수정해야한다")
    void testModifyInfo(){
        //given
        String userid = "abc1111";
        String newEmail = "qwr123@naver.com";
        User modifyUser = User.builder()
                .userId(userid)
                .build();
        //when
        boolean flag = userMapper.modify(modifyUser);
        //then
        assertTrue(flag);
        assertEquals(newEmail, userMapper.findUser(userid).getUserId());

    }


}