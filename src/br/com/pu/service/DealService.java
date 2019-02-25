package br.com.pu.service;

import java.util.Date;
import java.util.Map;

import br.com.pu.model.BuyOption;
import br.com.pu.model.Deal;
import br.com.pu.repository.DbRepository;

public class DealService {
	private static final long serialVersionUID = 1L;
	private DbRepository repo = DbRepository.getInstance();
	
	public void createDeal(String title, String text, Date publishDate, Date endDate, String type) {
		this.repo.getDealMap().put(title, new Deal(title, text, publishDate, endDate, type));
	}
	
	public Deal getDeal(String title) {
		System.out.println(" getDeal: " + title);
		if(repo.getDealMap().size() < 1) {
			return null;
		}
		
		for(Map.Entry<String, Deal> pair : this.repo.getDealMap().entrySet()) {
			System.out.println(" key : " + pair.getKey());
		    System.out.println(" Value : " + pair.getValue());
		}
		
		Deal deal = this.repo.getDealMap().get(title);
		if(deal.getTitle() == null) {
			return null;
		}else {
			return deal;
		}
	}
	
	public void deleteDeal(String title) {
		if(repo.getDealMap().size() > 0) {
			if(repo.getDealMap().get(title) != null) {
				repo.getDealMap().remove(title);
			}
		}
	}
	
	public void addOption(String dealTitle, BuyOption option) {
		Deal deal = repo.getDealMap().get(dealTitle);
	}
	
	public Map<String, Deal> getAllDeal() {
		return repo.getDealMap();

	}
}
