package com.trifling.things.repository;

import com.trifling.things.entity.Gender;
import com.trifling.things.entity.User;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

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
                .userPassword("def123@")
                .userEmail("def@abc.com")
                .userGender(Gender.MALE)
                .userAge(28)
                .build();

        boolean flag = userMapper.save(user);
        assert (flag);
    }

    @Test
    @DisplayName("유저의 id 값을 조회하면 관련된 id 값의 정보가 나와야한다")
    void testfinduser() {
        //give
        String userid = "def123";

        //when
        User findUser = userMapper.findUser(userid);

        //then
        System.out.println("findUser : " + findUser);
        assertEquals("def123", findUser.getUserId());

    }

//    수정필요
    @Test
    @DisplayName("유저의 id 값을 확인하면 유저의 비밀번호를 수정해야한다")
//    @Transactional
//    @Rollback
    void testModifyInfo() {
        //given
        String userid = "def123";
        String newpassword = "123@@";
        User modifyUser = User.builder()
                .userId(userid)
                .userPassword(newpassword)
                .build();
        //when
        boolean flag = userMapper.modify(modifyUser);


        //then
        assertTrue(flag);
        assertEquals(newpassword, userMapper.findUser(userid).getUserPassword());
    }


    @Test
//    @DisplayName("id가  def123 경우 결과값이 1이 나와야 한다.")
    @DisplayName("age가 28인 경우 결과값이 1이 나와야 한다.")
    void accountDuplicateTest() {
        // given
        String userid = "def123";
        //아래 이메일도 맞는지 한번 더 확인해보기
        int userAge = 28;

        //when
        int count = userMapper.isDuplicate("age", String.valueOf(userAge));

        //then
        assertEquals(1, count);
    }


}