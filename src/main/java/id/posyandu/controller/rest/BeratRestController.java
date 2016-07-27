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

import id.posyandu.domain.Berat;
import id.posyandu.service.BeratService;

@RestController
@RequestMapping("/api")
public class BeratRestController {
	
	@Autowired
	BeratService beratService;
	
	@RequestMapping(value="/berat", method = RequestMethod.GET)
	public Collection<Berat> getAllBerat() {
	    return (ArrayList<Berat>) beratService.getAllBerats();
	}
	
	@RequestMapping(value="/berat/{id}", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public ResponseEntity<Collection<Berat>> findBeratById(@PathVariable("id") String id){
        Collection<Berat> hasil = beratService.findAllBeratByIdBalita(id);
        if(hasil == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(hasil, HttpStatus.OK);
    }
	

}
