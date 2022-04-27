package com.codingdojo.user.repositories;

import java.util.List;

import com.codingdojo.user.models.Movie;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MovieRepository extends CrudRepository<Movie, Long> {
    // List<Movie> findByM_Name(String m_name);
    List<Movie> findAll();
}
