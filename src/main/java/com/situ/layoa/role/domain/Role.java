package com.situ.layoa.role.domain;

import java.io.Serializable;

import com.situ.layoa.base.domain.UserBase;

public class Role extends UserBase implements Serializable {
	private static final long serialVersionUID = 1L;

	private String roleCode;//角色编号
	private String roleName;//角色姓名
	private Integer roleKind;//角色级别#1 超级角色 0 普通角色
	private String roleInfo;//角色简介
	public String getRoleCode() {
		return roleCode;
	}
	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public Integer getRoleKind() {
		return roleKind;
	}
	public void setRoleKind(Integer roleKind) {
		this.roleKind = roleKind;
	}
	public String getRoleInfo() {
		return roleInfo;
	}
	public void setRoleInfo(String roleInfo) {
		this.roleInfo = roleInfo;
	}
	@Override
	public String toString() {
		return "Role [roleCode=" + roleCode + ", roleName=" + roleName + ", roleKind=" + roleKind + ", roleInfo="
				+ roleInfo + "]";
	}
	
	
}
