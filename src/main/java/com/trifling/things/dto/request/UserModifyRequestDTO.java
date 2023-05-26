package com.trifling.things.dto.request;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;


@Setter
@Getter
@NoArgsConstructor
@ToString
@EqualsAndHashCode
public class UserModifyRequestDTO {
    //내 정보 수정가능한 dto

    private String userId;

    @NotBlank
    private String userPassword;

    @NotBlank
    @Email
    private String userEmail;

    private MultipartFile profileImage;

}