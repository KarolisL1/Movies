package com.codingdojo.user.controllers;

import com.codingdojo.user.models.Movie;
import com.codingdojo.user.services.MovieService;
import com.codingdojo.user.services.UserService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MovieController {
    private MovieService movieService;
    private UserService userService;

    public MovieController(MovieService movieService, UserService userService) {
        this.movieService = movieService;
        this.userService = userService;
    }

    @GetMapping("/movies")
    public String getAllMovies(Model model) {
        model.addAttribute("movies", movieService.allMovies());
        return "index";
    }

    @GetMapping("/movies/new")
    public String newMovie(Model model) {
        model.addAttribute("movie", new Movie());
        return "newMovie";
    }

    @GetMapping("/movies/{id}")
    public String getMovie(Model model, Long id) {
        model.addAttribute("movie", movieService.findMovie(id));
        return "movie";
    }

    @GetMapping("/movies/{id}/edit")
    public String editMovie(Model model, Long id) {
        model.addAttribute("movie", movieService.findMovie(id));
        return "editMovie";
    }

    @GetMapping("/movies/{id}/delete")
    public String deleteMovie(Model model, Long id) {
        model.addAttribute("movie", movieService.findMovie(id));
        return "deleteMovie";
    }

    @PostMapping("/movie/new")
    public String createMovie(Movie movie) {
        movieService.createMovie(movie);
        return "redirect:/movies";
    }
}
