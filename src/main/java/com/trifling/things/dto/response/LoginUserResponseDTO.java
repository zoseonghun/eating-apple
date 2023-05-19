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



    private String suserid;
    private String susergender;
    private int suserage;
    private String sprofileimage;

}
