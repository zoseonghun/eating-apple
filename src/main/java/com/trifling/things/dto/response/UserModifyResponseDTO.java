package com.trifling.things.dto.response;

import lombok.*;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;


@Setter
@Getter
@NoArgsConstructor
@ToString
@EqualsAndHashCode
public class UserModifyResponseDTO {
    //내 정보 수정가능한 dto

    @NotBlank
    private String password;

    @NotBlank
    @Email
    private String email;

}