package com.trifling.things.entity;

import lombok.*;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MovieImg {

    private int imgNum;
    private String imgName;
    private String imgUrl;
    private int movieNum;
}
