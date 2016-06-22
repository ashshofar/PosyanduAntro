package id.posyandu.service;

import java.util.Collection;

import id.posyandu.domain.User;

public interface UserService {
	public User saveUser(User user);

    public Boolean deleteUser(String userId);

    public User editUser(User user);

    public User findUser(String userId);

    public Collection<User> getAllUsers();
    
    public Collection<User> getAllOrangtuas();
    
    public Collection<User> getAllBidans();
    
    public Collection<User> getAllPetugas();
    
    public Collection<User> getAllRws();
    
    public Collection<User> getAllAdmins();
    
    public Collection<User> getAllAyahs();
    
    public Collection<User> getAllIbus();
}
