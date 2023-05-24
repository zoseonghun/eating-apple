package com.trifling.things.controller;

import com.trifling.things.dto.page.Page;
import com.trifling.things.dto.page.PageMaker;
import com.trifling.things.dto.page.Search;
import com.trifling.things.dto.request.InsertMovieRequestDTO;
import com.trifling.things.dto.response.*;
import com.trifling.things.entity.Movie;
import com.trifling.things.service.MovieService;
import com.trifling.things.util.LoginUtil;
import com.trifling.things.util.upload.FileUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/movies")
@Slf4j
public class MovieController {

    private final MovieService movieService;

    @Value("${file.upload.root-path")
    private String rootPath;

    @GetMapping
    public String mainGo() {
        return "redirect:/movies/list";
    }

    // 영화 전체 목록 조회
    // 영화 포스터, 이름, 페이지
    @GetMapping("/list")
    public String movieList(Search page, Model model) {
        log.info("/movies/home : GET");
        log.info("pageNo:{} pageAmount:{}",page.getPageNo(),page.getAmount());

        List<MovieListResponseDTO> dto = movieService.movieList(page);

        PageMaker maker = new PageMaker(page, movieService.getCount(page));

        List<MainListResponseDTO> listByNum = movieService.mainTopTenList("num");

        List<MainListResponseDTO> listByScore = movieService.mainTopTenList("score");
        // mainTopTenList를 부를 수 있는 조건을 추가하면 다른 내용을 가져올수 있음

//        MainListTransResponseDTO transResponseDTO = new MainListTransResponseDTO();
//        transResponseDTO.setNumList(listByNum);
//        transResponseDTO.setScoreList(listByScore);

        int inResult =(int)model.asMap().get("inResult");

        model.addAttribute("topTenListByNum", listByNum);
        model.addAttribute("topTenListByScore", listByScore);
        model.addAttribute("mList", dto);
        model.addAttribute("maker", maker);
        model.addAttribute("s", page);
        model.addAttribute("inResult", inResult);
        return "movies/list";
    }

    @GetMapping("/detail")
    public String movieDetail(Model model, int mno, HttpServletRequest request) {
        log.info("/movies/detail : GET");


        LoginUserResponseDTO login = (LoginUserResponseDTO) request.getSession().getAttribute("login");

        int like = 0;
        if (login != null)  {
            like = movieService.checkLike(mno, login.getSusernum());
            model.addAttribute("jjim", like);
        }

        movieService.movieScoreRenew(mno);
        MovieDetailResponseDTO dto = movieService.movieDetail(mno);
        log.info("score: {}", dto.getScore());
        model.addAttribute("detail", dto);

        return "movies/detail";
    }

    @PostMapping("/new")
    public String newMovie(RedirectAttributes ra, InsertMovieRequestDTO dto) {

        MultipartFile imgFile = dto.getImgFile();

        String savePath = null;
        savePath = FileUtil.uploadFile(imgFile, rootPath);


        int result = movieService.insertMovie(dto, rootPath);
        ra.addFlashAttribute("inResult", result);

        return "redirect:/movies/list";
    }


}
