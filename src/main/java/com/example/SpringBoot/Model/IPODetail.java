package com.example.SpringBoot.Model;

public class IPODetail {
	private int ipoPlannedId;
	private String companyName;
	private int stockExchangeId;
	private int totalShares;
	private String openDateTime;
	private String remarks;
	
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public int getStockExchange() {
		return stockExchangeId;
	}
	public int getIpoPlannedId() {
		return ipoPlannedId;
	}
	public void setIpoPlannedId(int ipoPlannedId) {
		this.ipoPlannedId = ipoPlannedId;
	}
	public void setStockExchange(int stockExchange) {
		this.stockExchangeId = stockExchange;
	}
	public int getTotalShares() {
		return totalShares;
	}
	public void setTotalShares(int totalShares) {
		this.totalShares = totalShares;
	}
	public String getOpenDateTime() {
		return openDateTime;
	}
	public void setOpenDateTime(String openDateTime) {
		this.openDateTime = openDateTime;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
}
