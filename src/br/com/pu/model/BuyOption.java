package br.com.pu.model;

import java.util.Date;

public class BuyOption {
	
	private int id;
	private String title;
	private String text;
	private Double normalPrice;
	private Double salePrice;
	private Double percentageDiscount;
	private long quantityCupom;
	private Date startDate;
	private Date endDate;
	
	private boolean vinculado = false;
	
	public BuyOption(String title, String text, Double normalPrice, Double salePrice, Double percentageDiscount, long quantityCupom,
			Date startDate, Date endDate) {
		this.title = title;
		this.text = text;
		this.normalPrice = normalPrice;
		this.salePrice = salePrice;
		this.percentageDiscount = percentageDiscount;
		this.quantityCupom = quantityCupom;
		this.startDate = startDate;
		this.endDate = endDate;
	}
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getText() {
		return text;
	}


	public void setText(String text) {
		this.text = text;
	}


	public Double getNormalPrice() {
		return normalPrice;
	}
	public void setNormalPrice(Double normalPrice) {
		this.normalPrice = normalPrice;
	}
	
	public Double getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(Double salePrice) {
		this.salePrice = salePrice;
	}
	
	public Double getPercentageDiscount() {
		return percentageDiscount;
	}
	public void setPercentageDiscount(Double percentageDiscount) {
		this.percentageDiscount = percentageDiscount;
	}
	
	public long getQuantityCupom() {
		return quantityCupom;
	}
	
	public void setQuantityCupom(long quantityCupom) {
		this.quantityCupom = quantityCupom;
	}
	
	public void executeSale() {
		this.quantityCupom--;
	}
	
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}


	public boolean isVinculado() {
		return vinculado;
	}

	public void setVinculado(boolean vinculado) {
		this.vinculado = vinculado;
	}
	
	
	

}
