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
    private int movieNum;
    private String movieTitle;
    private String movieInfo;
    private String movieRuntime;
    private String movieDirector;
    private String movieGenre;
    private String movieAge;
    private int movieScore;
    private String imgUrl;

}
