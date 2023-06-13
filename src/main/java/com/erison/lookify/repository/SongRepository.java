package com.erison.lookify.repository;

import com.erison.lookify.models.Song;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


import java.util.List;

@Repository
public interface SongRepository extends CrudRepository<Song,Long> {
    List<Song> findAll();
    List<Song>findByArtist(String artist);

    List<Song>findTop10ByOrderByRatingDesc();
}
