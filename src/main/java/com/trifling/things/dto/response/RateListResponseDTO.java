package com.trifling.things.dto.response;

import com.trifling.things.dto.page.PageMaker;
import lombok.*;

import java.util.List;

@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RateListResponseDTO {
    private int count;
    private PageMaker pageInfo;
    private List<RateResponseDTO> rates;
}
