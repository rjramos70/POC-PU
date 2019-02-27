package br.com.pu.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Deal {
	
	private String title;
	private String text;
	private Date createDate;
	private Date publishDate;
	private Date endDate;
	private String url;
	private long totalSold;
	private String type;
	private List<BuyOption> options = new ArrayList<BuyOption>();
	
	public Deal(String title, String text, Date publishDate, Date endDate, String type) {
		super();
		this.title = title;
		this.text = text;
		this.createDate = new Date();
		this.publishDate = publishDate;
		this.endDate = endDate;
		this.type = type;
		this.url = "/" + removeTodosCaracteresQueNaoSaoAlphaNumericos(uppercaseFirstLetter(title));
		
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

	public void incrementTotalSold() {
		this.totalSold++;
	}
	
	public void decrementTotalSold() {
		this.totalSold--;
	}
	
	public void saleOption(int id) {
		for(BuyOption opt: this.options) {
			if(opt.getId() == id) {
				opt.executeSale();
				incrementTotalSold();
			}
		}
	}
	
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	public List<BuyOption> getOptions() {
		return options;
	}
	
	public void addOptionInDeal(BuyOption option) {
		// Verifica se Opition já existe na lista
		if(!this.options.contains(option)) {
			this.options.add(option);
		}

	}
	
	public void removeOptionById(int id) {
		for (int i = 0; i < options.size(); i++) {
			if(options.get(i).getId() == id) {
				this.options.remove(i);
			}
		}
	}
	
	public void removeAllOptions() {
		this.options.clear();
	}
	
	public void updateTotalSold() {
		this.totalSold++;
	}

	public Double getBestSalePrice() {
		Double best = (double) 999999999;
		for(BuyOption val : this.options) {
			if(val.getSalePrice() < best) {
				best = val.getSalePrice();
			}
		}
		return best;
	}
	
	public int getQtdOpcoesVinculadas() {
		return this.options.size();
	}
	
	// Remove TODOS os caracteres que não seja alpha numericos, ou seja, pontuações e espaços;
	public static String removeTodosCaracteresQueNaoSaoAlphaNumericos(String str) {
	    return str.replaceAll("\\W", "");   
	}
	
	public String uppercaseFirstLetter(String text) {
		
		if (text == null || text.length() == 0) {
	        return text;
	    }
	    String[] w = text.split(" ");
	    
	    String ret = null;
	    for (String word : w) {
	    	ret += word.substring(0, 1).toUpperCase() + word.substring(1);
		}
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
