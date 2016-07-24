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

import id.posyandu.domain.Balita;
import id.posyandu.service.BalitaService;


@RestController
@RequestMapping("/api")
public class BalitaRestController {
	
	@Autowired
    BalitaService balitaService;
	
	@RequestMapping(value="/balita", method = RequestMethod.GET)
	public Collection<Balita> getAllBalita() {
	    return (ArrayList<Balita>) balitaService.getAllBalitas();
	  }
	
	@RequestMapping(value="/balita/{id}", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public ResponseEntity<Collection<Balita>> findBalitaById(@PathVariable("id") String id){
        Collection<Balita> hasil = balitaService.getBalitasByOrangTua(id, id);
        if(hasil == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(hasil, HttpStatus.OK);
    }
}
