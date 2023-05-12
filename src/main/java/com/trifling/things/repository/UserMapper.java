package com.trifling.things.repository;

import com.trifling.things.entity.Interest;
import com.trifling.things.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserMapper {

    // 회원 가입 기능 ㅇ
    boolean save(User user);

    //userList ㅇ
    List<User> userList();

    // 상세 조회(내 정보 조회)  ---- 로그인
    User findUser(String userId);

    //회원 정보 수정
    boolean modify(User user);

    //아이디, 이메일 중복값 확인 ㅇ
    int isDuplicate(
            @Param("type") String type,
            @Param("keyword") String keyword);


    // 영화 찜하기 (조인해야 해요... 모르시면 물어봐주세요)
    // 유저 아이디로 영화 번호 ㅇ
    List<Interest> interestList(String userId, int movieNum);


}
