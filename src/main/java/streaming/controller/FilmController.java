/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import streaming.entity.Film;
import streaming.service.FilmCrudService;

/**
 *
 * @author tom
 */
@Controller
//@RequestMapping("/film")
public class FilmController {
    @Autowired
    private FilmCrudService service;
    
    @RequestMapping(value="/film_lister", method = RequestMethod.GET) 
    public  String listerTous(Model model){
        Iterable<Film> films = service.findAll();
        model.addAttribute("listeFilms", films);
        return "liste_des_films";
    }
    
    
    @RequestMapping(value="/find/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Film findById( @PathVariable("id") long id){
        
        Film f = new Film(1L, "Karate Kid", "blabla", 1989L, null);
        
        return f;
    }
    
    @RequestMapping(value="/film_ajouter", method = RequestMethod.GET)
    public String ajouterGET(Model model){
        Film film = new Film();
        model.addAttribute("film",film);
        return "film_ajouter";
    }
    
    
     @RequestMapping(value="/film_ajouter", method = RequestMethod.POST)
    public String ajouterPOST( @ModelAttribute("film")Film film){
        service.save(film);
        return  "redirect:/film_lister";
    }
    
    
}
