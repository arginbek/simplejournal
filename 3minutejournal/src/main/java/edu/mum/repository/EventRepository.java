package edu.mum.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.mum.domain.Event;

@Repository
public interface EventRepository extends CrudRepository<Event, Long> {

}
