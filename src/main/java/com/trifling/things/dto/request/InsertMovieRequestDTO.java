package com.trifling.things.dto.request;

import com.trifling.things.entity.Movie;
import com.trifling.things.entity.MovieImg;
import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@Setter @Getter
@ToString @EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class InsertMovieRequestDTO {
    private String title;
    private String info;
    private String runtime;
    private String director;
    private String genre;
    private int age;

    // poster 저장용 필드
//    private String imgUrl;
    private MultipartFile imgFile;

    // youtube 링크 저장용 필드
    private String imgYoutubeUrl;


    // 영화 정보 등록용 toEntity메서드
    public Movie toMovie() {
        return Movie.builder()
                .movieTitle(this.title)
                .movieInfo(this.info)
                .movieRuntime(this.runtime)
                .movieDirector(this.director)
                .movieGenre(this.genre)
                .movieAge(this.age)
                .build();
    }


    public MovieImg toMovieImg(int movieNum, String savePath) {
        return MovieImg.builder()
                .movieNum(movieNum)
                .imgName("poster")
                .imgUrl(savePath)
                .build();
    }

    public MovieImg toMovieYoutube(int movieNum) {
        return MovieImg.builder()
                .movieNum(movieNum)
                .imgName("youtube")
                .imgUrl(this.imgYoutubeUrl)
                .build();
    }
}
