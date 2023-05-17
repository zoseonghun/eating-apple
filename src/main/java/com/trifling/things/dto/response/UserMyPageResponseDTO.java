package com.trifling.things.dto.response;


import com.trifling.things.entity.user.Gender;
import com.trifling.things.entity.user.Grade;
import lombok.*;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserMyPageResponseDTO {

    private String userId;
    private int userPoint;
    private Grade userGrade;

    //찜한 목록보여주기
    private String movieTitle;

    // 내가 쓴 댓글 - 10자로 끊어서 보여주기
    private String reviewShortContent(String reviewContent) {
        return sliceString(reviewContent, 30);

    }

    /**
     * @param targetString : 줄이고 싶은 원본 문자열
     * @param wishLength   : 짜르고 싶은 글자 수
     * @return : wishLength보다 targetString이 길면
     * wishLength만큼 짤라서 뒤에 ... 붙여서 리턴
     */
    private static String sliceString(String targetString, int wishLength) { //String의 값을 가져와! wishLength는 화면에서 입력되는 값
        //자르고 싶은 문자열 주고, 자르고 싶은 길이 입력해라
        return (targetString.length() > wishLength) //원본 타겟 글자의 길이가 wishlength의 길이보다 크면 잘라주겠다, 안크면 그대로 입력
                ? targetString.substring(0, wishLength) + "..."
                : targetString;
    }
}