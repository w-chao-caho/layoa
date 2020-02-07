package com.situ.layoa.student.controller;

import java.io.Serializable;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.situ.layoa.student.domain.Student;
@RestController
@RequestMapping("/student")
public class StudentController implements Serializable {

	private static final long serialVersionUID = 1L;

	@PostMapping
	public Long save(Student student) {
		System.out.println(student);
		return 1L;
		
	}
	
	/**
	 * 
	 * @param stuName
	 * @return 1 可以使用 0 不可以使用
	 */
	@GetMapping("/checkname")
	public Integer checkStuName(String stuName) {
		System.out.println("校验");
		Integer result = 1;
		if("张三".equals(stuName)) {
			result = 0;
		}
		return result;
		
	}
}
