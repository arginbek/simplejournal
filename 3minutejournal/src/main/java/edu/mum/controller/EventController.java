package edu.mum.controller;

import java.security.Principal;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import edu.mum.domain.Duration;
import edu.mum.domain.Event;
import edu.mum.domain.Feeling;
import edu.mum.domain.Frequency;
import edu.mum.domain.Type;
import edu.mum.domain.UserCredentials;
import edu.mum.service.DurationService;
import edu.mum.service.EventService;
import edu.mum.service.FeelingService;
import edu.mum.service.FrequencyService;
import edu.mum.service.TypeService;
import edu.mum.service.UserCredentialsService;

@Controller
@SessionAttributes(value= {"feelings", "types", "durations", "frequencies"})
public class EventController {

	@Autowired
	UserCredentialsService userCredentialsService;

	@Autowired
	EventService eventService;

	@Autowired
	FeelingService feelingService;

	@Autowired
	DurationService durationService;

	@Autowired
	TypeService typeService;

	@Autowired
	FrequencyService frequencyService;

	@RequestMapping(value = "/addEvent", method = RequestMethod.GET)
	public String addEvent(@ModelAttribute("newEvent") Event event, Model model) {
		List<Feeling> feelings = feelingService.getAll();
		List<Duration> durations = durationService.getAll();
		List<Type> types = typeService.getAll();
		List<Frequency> frequencies = frequencyService.getAll();
		model.addAttribute("feelings", feelings);
		model.addAttribute("types", types);
		model.addAttribute("durations", durations);
		model.addAttribute("frequencies", frequencies);
		return "addEvent";
	}

	@RequestMapping(value = "/addEvent", method = RequestMethod.POST)
	public String addEvent(@Valid @ModelAttribute("newEvent") Event event, BindingResult result, Principal principal, Model model) {
		
		if(result.hasErrors()) {
			return "addEvent";
		}
		
		UserCredentials userCredentials = userCredentialsService.findByUsername(principal.getName());
		event.setUser(userCredentials);

		eventService.save(event);

		return "redirect:/welcome";
	}
}
