package edu.mum.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import edu.mum.domain.Event;
import edu.mum.domain.UserCredentials;

@Repository
public interface EventRepository extends CrudRepository<Event, Long> {
	
	@Query("select e from event e where user = :user")
	public List<Event> findByUserCredentials(@Param("user") UserCredentials user);
	
	public List<Event> findByUser(@Param("user") UserCredentials user);
}
