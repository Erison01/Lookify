package com.erison.lookify.services;

import com.erison.lookify.models.Song;
import com.erison.lookify.repository.SongRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SongService {
    @Autowired
    private SongRepository songRepository;

public List<Song>allSongs(){
    return songRepository.findAll();
}
public void createSong(Song song){
    songRepository.save(song);
}
public void deleteSong(Long id){
    songRepository.deleteById(id);
}
public Song songDetails(Long id){
    return songRepository.findById(id).orElse(null);
}
public List<Song>songArtist(String artist){
    return songRepository.findByArtist(artist);
}
public List<Song> topTenSongs(){
    return songRepository.findTop10ByOrderByRatingDesc();
}
}
