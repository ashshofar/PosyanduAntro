package id.posyandu.controller.rest;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import id.posyandu.domain.Tinggi;
import id.posyandu.service.TinggiService;

@RestController
@RequestMapping("/api")
public class TinggiRestController {
	
	@Autowired
	TinggiService tinggiService;
	
	@RequestMapping(value="/tinggi", method = RequestMethod.GET)
	public Collection<Tinggi> getAllTinggi() {
	    return (ArrayList<Tinggi>) tinggiService.getAllTinggis();
	}
	
	@RequestMapping(value="/tinggi/{id}", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public ResponseEntity<Collection<Tinggi>> findTinggiById(@PathVariable("id") String id){
        Collection<Tinggi> hasil = tinggiService.findAllTinggiByIdBalita(id);
        if(hasil == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(hasil, HttpStatus.OK);
    }
}
