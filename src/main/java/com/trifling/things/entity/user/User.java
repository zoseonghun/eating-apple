package com.trifling.things.entity.user;

import lombok.*;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {

    private int userNum;
    private String userId;
    private String userPassword;
    private String userEmail;
    private Gender userGender;
    private int userAge;
    private int userPoint;
    private Grade userGrade;
}
