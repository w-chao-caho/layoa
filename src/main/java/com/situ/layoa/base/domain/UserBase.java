package com.situ.layoa.base.domain;

import java.io.Serializable;
import java.util.Date;

public class UserBase implements Serializable {
	private static final long serialVersionUID = 1L;

	private Long rowId;//用户ID
	private String createBy;//创建人
	private Date createTime;//创建时间
	private String updateBy;//修改人
	private Date updateTime;//修改时间 
	private Integer activeFlag;//是否有效#1否0有效
	public Long getRowId() {
		return rowId;
	}
	public void setRowId(Long rowId) {
		this.rowId = rowId;
	}
	public String getCreateBy() {
		return createBy;
	}
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getUpdateBy() {
		return updateBy;
	}
	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public Integer getActiveFlag() {
		return activeFlag;
	}
	public void setActiveFlag(Integer activeFlag) {
		this.activeFlag = activeFlag;
	}
	
	
}
