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
public class LoginUserResponseDTO {



    private String sUserId;
    private String sUserEmail;
    private String sUserGender;
    private int sUserAge;
    private int sUserPoint;
    private String sUserGrade;
}
