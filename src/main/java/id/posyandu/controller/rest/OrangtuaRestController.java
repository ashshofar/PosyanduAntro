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

import id.posyandu.domain.User;
import id.posyandu.service.UserService;

@RestController
@RequestMapping("/api")
public class OrangtuaRestController {
	
	@Autowired
    UserService userService;
	
	@RequestMapping(value="/orangtua", method = RequestMethod.GET)
	public Collection<User> getAllOrangtua() {
	    return (ArrayList<User>) userService.getAllOrangtuas();
	  }
	
	@RequestMapping(value="/orangtua/{id}", method = RequestMethod.GET)
    @ResponseStatus(HttpStatus.OK)
    public ResponseEntity<User> findOrangtuaById(@PathVariable("id") String id){
        User hasil = userService.findUser(id);
        if(hasil == null){
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<>(hasil, HttpStatus.OK);
    }

}
