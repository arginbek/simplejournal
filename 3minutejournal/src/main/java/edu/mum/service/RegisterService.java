package edu.mum.service;

import java.util.List;

import edu.mum.domain.Register;

public interface RegisterService {
	public void save(Register register);

	public void saveFull(Register register);

	public List<Register> findAll();

	public Register findOne(Long id);

	/*public Register findByRegisterNumber(int registerId);*/
}
