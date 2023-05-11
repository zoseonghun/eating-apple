package com.trifling.things.dto;

import com.trifling.things.entity.Gender;
import lombok.*;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Setter
@Getter
@NoArgsConstructor
@ToString
@EqualsAndHashCode
public class SignUpDTO {

    //회원가입에 필요한 dto

    @NotBlank
    @Size(min=4, max=14)
    private String userId;

    @NotBlank
    private String password;

    @NotBlank
    @Email
    private String email;

    @NotBlank
    private Gender gender;

    @NotBlank
    private int age;

}
