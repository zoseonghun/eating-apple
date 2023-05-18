package com.trifling.things.dto.request;

import lombok.*;

@Setter @Getter
@NoArgsConstructor
@ToString @EqualsAndHashCode
public class LoginRequestDTO {

    private String userId;
    private String userPassword;
    private boolean autoLogin;
}