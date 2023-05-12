package com.trifling.things.dto.response;

import lombok.*;

@Setter
@Getter
@ToString @EqualsAndHashCode
@NoArgsConstructor @AllArgsConstructor
@Builder
public class MovieListResponseDTO {

    private int movieNum;
    private String movieTitle;
    private int movieScore;


}
