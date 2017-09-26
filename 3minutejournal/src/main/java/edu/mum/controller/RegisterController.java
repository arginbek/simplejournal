package edu.mum.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.mum.domain.Register;
import edu.mum.service.RegisterService;

@Controller
@RequestMapping({ "/registers" })
public class RegisterController {

	@Autowired
	private RegisterService registerService;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String listRegisters(Model model) {
		model.addAttribute("authority", registerService.findAll());
		return "registers";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String getRegisterById(@PathVariable("id") Long id, Model model) {
		Register register = registerService.findOne(id);
		model.addAttribute("register", register);

		return "register";
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.GET)
	public String getAddNewUserRegisterForm(@ModelAttribute("newRegister") Register newRegister) {
		return "addUserRegister";
	}

	@RequestMapping(value = "/addAdmin", method = RequestMethod.GET)
	public String getAddNewAdminRegisterForm(@ModelAttribute("newRegister") Register newRegister) {
		return "addAdminRegister";
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String processAddNewUserRegisterForm(@ModelAttribute("newRegister") @Valid Register registerToBeAdded,
			BindingResult result) {

		if (result.hasErrors()) {
			return "addUserRegister";
		}

		// Error caught by ControllerAdvice IF no authorization...
		registerService.saveFull(registerToBeAdded);

		return "redirect:/welcome";

	}

	@RequestMapping(value = "/addAdmin", method = RequestMethod.POST)
	public String processAddNewRegisterForm(@ModelAttribute("newRegister") @Valid Register registerToBeAdded,
			BindingResult result) {

		if (result.hasErrors()) {
			return "addAdminRegister";
		}

		// Error caught by ControllerAdvice IF no authorization...
		registerService.saveFull(registerToBeAdded);

		return "redirect:/welcome";

	}
	
}
