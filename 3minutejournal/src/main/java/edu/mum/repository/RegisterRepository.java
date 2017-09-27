package edu.mum.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import edu.mum.domain.Register;

@Repository
public interface RegisterRepository extends CrudRepository<Register, Long> {
}