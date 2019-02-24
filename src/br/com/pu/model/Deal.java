package br.com.pu.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;



public class Deal {
	
	private String title;
	private String text;
	private Date createDate;
	private Date publishDate;
	private Date endDate;
	private String url;
	private long totalSold;
	private String type;
	
	public Deal(String title, String text, Date publishDate, Date endDate, String type) {
		super();
		this.title = title;
		this.text = text;
		this.createDate = new Date();
		this.publishDate = publishDate;
		this.endDate = endDate;
		this.type = type;
		this.url = "/" + uppercaseFirstLetter(title.replace(".", ""));
		
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

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getPublishDate() {
		return publishDate;
	}

	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public long getTotalSold() {
		return totalSold;
	}

	public void setTotalSold(long totalSold) {
		this.totalSold = totalSold;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String uppercaseFirstLetter(String text) {
	    System.out.println("uppercaseFirstLetter.text: " + text);
		if (text == null || text.length() == 0) {
	        return text;
	    }
	    String[] w = text.split(" ");
	    
	    System.out.println("Qtd. words: "+ w.length);
	    
	    String ret = null;
	    for (String word : w) {
	    	System.out.println("word: " + word);
	    	ret += capitalizeFirstLetter(word);
		}
	    // return text.substring(0, 1).toUpperCase() + text.substring(1).replaceAll("\\s","");
	    return ret.replaceAll("null", "");
	}
	
	
	public String capitalizeFirstLetter(String original) {
	    if (original == null || original.length() == 0) {
	        return original;
	    }
	    return original.substring(0, 1).toUpperCase() + original.substring(1);
	}
	
	@Override
	public String toString() {
		return "Deal [title=" + title + ", text=" + text + ", createDate=" + createDate + ", publishDate=" + publishDate
				+ ", endDate=" + endDate + ", url=" + url + ", totalSold=" + totalSold + ", type=" + type + "]";
	}
	
	

}
