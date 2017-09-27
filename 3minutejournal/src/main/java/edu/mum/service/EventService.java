package edu.mum.service;

import java.util.List;

import edu.mum.domain.Event;

public interface EventService {
	public Event save(Event event);
	public List<Event> findAll();
	public Event findOne(Long id);
}
