package com.trifling.things.entity;

import lombok.*;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Movie {
    private long movieNum;
    private String movieTitle;
    private String movieInfo;
    private int movieImgNum;
    private String movieRuntime;
    private String movieGenre;
    private String movieAge;

}
