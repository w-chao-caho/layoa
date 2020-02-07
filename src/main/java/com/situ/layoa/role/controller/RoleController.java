package com.situ.layoa.role.controller;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.situ.layoa.role.domain.Role;
import com.situ.layoa.role.service.RoleService;
@RestController
@RequestMapping("/role")
public class RoleController implements Serializable {
	private static final long serialVersionUID = 1L;
	@Autowired
	private RoleService roleService;
	@PostMapping
	public Long saveRole(Role role) {
		System.out.println(role);
		return roleService.save(role);
	}

}
