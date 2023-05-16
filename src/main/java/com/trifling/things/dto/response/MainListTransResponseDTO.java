package com.trifling.things.dto.response;

import lombok.*;

import java.util.List;

@Setter
@Getter
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MainListTransResponseDTO {

    private List<MainListResponseDTO> numList;
    private List<MainListResponseDTO> scoreList;

    // 원하는 목록을 더 보내려면 추가하면됨


}
