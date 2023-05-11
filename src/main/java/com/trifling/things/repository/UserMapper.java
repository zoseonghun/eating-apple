package com.trifling.things.repository;

import com.trifling.things.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserMapper {

    // 회원 가입 기능
    boolean save(User user);

    // 상세 조회(내 정보 조회)
    User findUser(String account);

    //회원 정보 수정
    boolean modify(User user);

    //아이디, 이메일 중복값 확인
    int isDuplicate(
            @Param("type") String type,
            @Param("keyword") String keyword);





    // 영화 찜하기 (조인해야 해요... 모르시면 물어봐주세요)


}
