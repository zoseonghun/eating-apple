package com.trifling.things.repository;

import com.trifling.things.dto.response.MyInfoResponseDTO;
import com.trifling.things.dto.response.ReviewResponseDTO;
import com.trifling.things.entity.user.Gender;
import com.trifling.things.entity.user.Interest;
import com.trifling.things.entity.user.User;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

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
                .userId("유저4")
                .userPassword("1234")
                .userEmail("user@a.com")
                .userGender(Gender.MALE)
                .userAge(55)
                .build();

        boolean flag = userMapper.save(user);
        assert (flag);
    }

    @Test
    @DisplayName("유저의 id 값을 조회하면 관련된 id 값의 정보가 나와야한다")
    void testfinduser() {
        //give
        String userid = "유저1";

        //when
        User findUser = userMapper.findUser(userid);

        //then
        System.out.println("findUser : " + findUser);
        assertEquals("유저1", findUser.getUserId());

    }

//    수정필요
    @Test
    @DisplayName("유저의 id 값을 확인하면 유저의 비밀번호를 수정해야한다")
//    @Transactional
//    @Rollback
    void testModifyInfo() {
        //given
        String userid = "abc1111";
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
    @DisplayName("email이 user@a.com경우 1이 나와야한다 ")
    void accountDuplicateTest() {
        // given
        String userid = "유저4";
        String email = "user@a.com";

        //when
        int count = userMapper.isDuplicate("email", email);

        //then
        assertEquals(1, count);
    }

    @Test
    @DisplayName("userNum을 조회하면 관련된 정보를 가져온다")
    void myReviewListTest(){
        int userNum =1;
        List<ReviewResponseDTO> reviews = userMapper.myReviewList(userNum);

        System.out.println("reviews" + reviews);
        assertEquals(4, reviews.size());
    }


//    @Test
//    @DisplayName("userID를 조회하면 관련된 정보를 가져온다")
//    void myInfoTest() {
//        String userId = "유저1";
//        List<MyInfoResponseDTO> infoDTOList = userMapper.myInfo(userId);
//
//        // 리스트 크기 확인
//        System.out.println("infoDTO : " + infoDTOList);
//        assertEquals(4, infoDTOList.size());
//    }

    @Test
    @DisplayName("movieNum을 조회하면 관련된 정보를 가져온다")
    void interestTest() {
        int movieNum = 119;
        List<Interest> interests = userMapper.interestList(movieNum);
        System.out.println("interests = " + interests);
        assertEquals(1, interests.size());
    }

}
