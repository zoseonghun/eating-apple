package com.trifling.things.repository;

import com.trifling.things.dto.response.MyInfoResponseDTO;
import com.trifling.things.entity.Rate;
import com.trifling.things.entity.user.Interest;
import com.trifling.things.entity.user.User;
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

    //아이디, 이메일 중복값 확인
    int isDuplicate(
            @Param("type") String type,
            @Param("keyword") String keyword);


    // 영화 찜하기 (조인해야 해요... 모르시면 물어봐주세요)
    // 유저 번호PK로 영화 번호 ㅇ
    List<Interest> interestList(int userNum);
// interest int로 dto title. num img_url table2개조인

    //내가 쓴 댓글목록
    List<Review> myReviewList(int userNum);

    List<MyInfoResponseDTO> myInfo(String userId);




}