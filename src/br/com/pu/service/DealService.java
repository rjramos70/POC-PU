package br.com.pu.service;

import java.util.Date;
import java.util.Map;

import br.com.pu.model.Deal;
import br.com.pu.repository.DbRepository;

public class DealService {
	private static final long serialVersionUID = 1L;
	private DbRepository repo = DbRepository.getInstance();
	
	public void creareDeal(String title, String text, Date publishDate, Date endDate, String type) {
		// User tmpUser = new User(userIdCounter++, name, login, password);
		// System.out.println("Criando User:");
		// System.out.println(" login: " + login);
		// System.out.println(" User: " + tmpUser.toString());
		// this.userMap.put(login, tmpUser);
		// System.out.println("Usuário inserido: " + tmpUser.toString());
		Deal deal = new Deal(title, text, publishDate, endDate, type);
		this.repo.dealMap.put(title, deal);
	}
	
	public Deal getDeal(String login) {
		System.out.println(" getDeal: " + login);
		if(repo.dealMap.size() < 1) {
			return null;
		}
		
		for(Map.Entry<String, Deal> pair : this.repo.dealMap.entrySet()) {
			System.out.println(" key : " + pair.getKey());
		    System.out.println(" Value : " + pair.getValue());
		}
		
		Deal deal = this.repo.dealMap.get(login);
		if(deal.getTitle() == null) {
			return null;
		}else {
			return deal;
		}
	}
}
