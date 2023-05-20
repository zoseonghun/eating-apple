package com.trifling.things.entity.user;

import lombok.*;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Interest {

    private int movieNum;
    private String movieTitle;
    private String imgUrl;
    private int userNum;


}
