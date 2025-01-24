package in.sam.main.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import in.sam.main.entites.User;



public interface UserRepository extends JpaRepository<User, Integer>{

	User findByEmail(String email);
	
}
