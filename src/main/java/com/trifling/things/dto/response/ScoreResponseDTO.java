package com.trifling.things.dto.response;

import lombok.*;

@Setter @Getter
@ToString @EqualsAndHashCode
@NoArgsConstructor
public class ScoreResponseDTO {

    private int totalScore;
    private int maxCount;
}
