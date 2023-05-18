package com.trifling.things.dto.response;

import com.trifling.things.entity.user.Grade;
import lombok.*;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MyInfoResponseDTO {

    private int userNum;
    private String userId;
    private int userPoint;
    private Grade userGrade;
    private int movieNum;
    private String movieTitle;
    private String rateReview;


}
