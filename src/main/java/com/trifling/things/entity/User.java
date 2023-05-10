package com.trifling.things.entity;

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
    private String password;
    private String email;
    private Gender gender;
    private int age;
    private int point;
    private Grade grade;
}
