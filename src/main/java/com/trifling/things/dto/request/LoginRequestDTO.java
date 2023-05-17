package com.trifling.things.dto.request;

import lombok.*;

@Setter @Getter
@NoArgsConstructor
@ToString @EqualsAndHashCode
public class LoginRequestDTO {

    private String account;
    private String password;
    private boolean autoLogin;
}