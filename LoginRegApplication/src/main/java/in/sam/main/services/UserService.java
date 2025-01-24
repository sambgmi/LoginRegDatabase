package in.sam.main.services;

import in.sam.main.entites.User;

public interface UserService {
public boolean registerUser(User user);
public User loginHere(String email,String password);
}
