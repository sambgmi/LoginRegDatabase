package in.sam.main.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.sam.main.entites.User;
import in.sam.main.repositories.UserRepository;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserRepository userRepo;
	
	
	@Override
	public boolean registerUser(User user) {
		boolean status =false;
		try {
			userRepo.save(user);
		status=true;
		
		}catch(Exception e) {
			status=false;
			e.printStackTrace();
		}
		
		return status;
	}


	@Override
	public User loginHere(String email, String password) {
	User validUser = userRepo.findByEmail(email);
	if(validUser !=null && validUser.getPassword().equals(password)) {
		return validUser;
	}
		return null;
	}

}
