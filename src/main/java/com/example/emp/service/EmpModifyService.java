package com.example.emp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.example.domain.Dept;
import com.example.domain.Emp;
import com.example.mapper.DeptMapper;
import com.example.mapper.EmpMapper;

@Service
public class EmpModifyService {
	
	@Autowired
	DeptMapper deptMapper;
	
	@Autowired
	EmpMapper empMapper;
	
	public void Modify( Emp emp, BindingResult errors ) {
		if ( emp.getDeptno() != null ) {
			Dept dept = deptMapper.selectByCode( emp.getDeptno().toString() );
			if ( dept == null ) {
				errors.reject("Invalid informations", "유효한 정보가 아닙니다.");
			}
		}
		
		if ( !errors.hasErrors() ) {
			empMapper.modify(emp);
		}
	}
	

}
