package com.trifling.things.dto.request;

import com.trifling.things.entity.user.Gender;
import lombok.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Setter
@Getter
@NoArgsConstructor
@ToString
@EqualsAndHashCode
public class SignUpRequestDTO {

    //회원가입에 필요한 dto

    @NotBlank
    @Size(min=4, max=14)
    private String userId;

    @NotBlank
    private String userPassword;

    @NotBlank
    @Email
    private String userEmail;

    @NotBlank
    private Gender userGender;

    @NotBlank
    private int userAge;

    private MultipartFile profileImage;

}