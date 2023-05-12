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
public class MyPageModifyDTO {
    //내 정보 수정가능한 dto

    @NotBlank
    private String password;

    @NotBlank
    @Email
    private String email;

}
