package com.codingdojo.user.services;

import java.util.List;
import java.util.Optional;

import com.codingdojo.user.models.Movie;
import com.codingdojo.user.repositories.MovieRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieService {
    @Autowired
    private MovieRepository movieRepository;

    public MovieService(MovieRepository movieRepository) {
        this.movieRepository = movieRepository;
    }

    public List<Movie> allMovies() {
        return movieRepository.findAll();
    }

    public Movie createMovie(Movie movie) {
        return movieRepository.save(movie);
    }

    public Optional<Movie> findMovie(Long id) {
        return movieRepository.findById(id);
    }

    public Movie updateMovie(Movie movie) {
        return movieRepository.save(movie);
    }

    public void deleteMovie(Long id) {
        movieRepository.deleteById(id);
    }

    // public List<Movie> findByName(String name) {
    //     return (List<Movie>) movieRepository.findByName(name);
    // }
}
