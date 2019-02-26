package br.com.pu.service;

import java.util.Date;
import java.util.List;

import br.com.pu.model.BuyOption;
import br.com.pu.repository.DbRepository;

public class BuyOptionService {
	private static final long serialVersionUID = 1L;
	private DbRepository repo = DbRepository.getInstance();
	
	public void insertOption(String title, Double normalPrice, Double salePrice, Double percentageDiscount, long quantityCupom,
			Date startDate, Date endDate) {
		BuyOption buyOption = new BuyOption(title, normalPrice, salePrice, percentageDiscount, quantityCupom, startDate, endDate);
		if(!this.repo.getOptionList().contains(buyOption)) {
			buyOption.setId(this.repo.getBuyOptionId());
			this.repo.getOptionList().add(buyOption);
		}
	}
	
	public void updateOption(BuyOption option) {
		if(this.repo.getOptionList().contains(option)) {
			for (BuyOption tmpOption : this.repo.getOptionList()) {
				if(tmpOption.getTitle().equals(option.getTitle())) {
					tmpOption.setNormalPrice(option.getNormalPrice());
					tmpOption.setSalePrice(option.getSalePrice());
					tmpOption.setPercentageDiscount(option.getPercentageDiscount());
					tmpOption.setQuantityCupom(option.getQuantityCupom());
					tmpOption.setStartDate(option.getStartDate());
					tmpOption.setEndDate(option.getEndDate());
				}
			}
		}
	}
	
	public void deleteOption(BuyOption option) {
		if(this.repo.getOptionList().contains(option)) {
			this.repo.getOptionList().remove(option);
		}
	}
	
	public void sellUnity() {
		// Implementar ainda
	}
	
	public List<BuyOption> getAllOptions() {
		return this.repo.getOptionList();
	}
	
	public BuyOption getOptionByTitle(String title) {
		for(BuyOption tmp : this.repo.getOptionList()) {
			if(tmp.getTitle().equals(title)) {
				return tmp;
			}
		}
		return null;
	}
	
	public BuyOption getOptionById(int id ){
		for(BuyOption tmp : this.repo.getOptionList()) {
			if(tmp.getId() == id) {
				return tmp;
			}
		}
		return null;
	}
}
