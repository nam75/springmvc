
package streaming.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import streaming.entity.Serie;
import streaming.service.SerieCrudService;

@Controller
public class SerieController {
    @Autowired
    private SerieCrudService service;
    
    @RequestMapping(value="/serie_lister", method=RequestMethod.GET)
    public String listerTous(Model model){
        Iterable<Serie> series = service.findAll();
        model.addAttribute("listeSeries", series);
        return "liste_des_series";
    }
    
    
}
