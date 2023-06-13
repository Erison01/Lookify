package com.erison.lookify.controllers;

import com.erison.lookify.models.Song;
import com.erison.lookify.services.SongService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.swing.plaf.PanelUI;
import java.util.List;

@Controller
public class SongController {
    @Autowired
    private SongService songService;

    @GetMapping("/")
    public String home(){
        return "home";
    }

    @GetMapping("/dashboard")
    public String index(Model model){
        List<Song>songs  = songService.allSongs();
        model.addAttribute("allSongs",songs);
        return "dashboard";
    }
    @GetMapping("/song/new")
    public String newSong(@ModelAttribute("theSong") Song theSong){
     return "newJ";
    }
    @PostMapping("/create")
    public String createSong(@Valid @ModelAttribute("theSong") Song theSong, BindingResult result){
        if (result.hasErrors()){
            return "new";
        }else {

            songService.createSong(theSong);
            return "redirect:/dashboard";
        }
    }
    @DeleteMapping("/delete/{id}")
    public String deleteSong(@PathVariable  Long id){
        songService.deleteSong(id);
        return "redirect:/dashboard";
    }
    @GetMapping("/song/{id}")
    public String songDetails(@PathVariable Long id,Model model){
        Song song = songService.songDetails(id);
        model.addAttribute("songS",song);
        return "songJ";
    }
    @GetMapping("/search")
    public String searchArtist(@RequestParam String artist,Model model){
        List<Song>songList=songService.songArtist(artist);
        model.addAttribute("songList",songList);
        model.addAttribute("artist", artist);
        return "search";
    }
    @GetMapping("/song/top-ten")
    public String topSongs(Model model){
        List<Song> song = songService.topTenSongs();
        model.addAttribute("topSong",song);
        return "top-ten";
    }
}
