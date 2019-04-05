package com.service;


import org.springframework.stereotype.Service;
import com.entity.Student;

import com.service.base.BaseServiceImp;

@Service("StudentService")
public class StudentServiceImp extends BaseServiceImp<Student> implements StudentService{
	
}
