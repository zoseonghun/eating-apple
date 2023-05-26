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


    private int susernum;
    private String suserid;
    private String semail;
    private String susergender;
    private int suserage;
    private String sprofileimage;
    private String susergrade;
    private int suserpoint;


}
