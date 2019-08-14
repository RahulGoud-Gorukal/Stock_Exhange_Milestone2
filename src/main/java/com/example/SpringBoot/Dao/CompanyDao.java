package com.example.SpringBoot.Dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.SpringBoot.Model.Company;
public interface CompanyDao extends JpaRepository<Company, Integer> {
	  
}
