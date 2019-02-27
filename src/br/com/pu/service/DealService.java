package br.com.pu.service;

import java.util.Date;
import java.util.Map;

import br.com.pu.model.BuyOption;
import br.com.pu.model.Deal;
import br.com.pu.repository.DbRepository;

public class DealService {
	private static final long serialVersionUID = 1L;
	private DbRepository repo = DbRepository.getInstance();
	
	/**
	 * Cria a Oferta
	 * 
	 * @param title
	 * @param text
	 * @param publishDate
	 * @param endDate
	 * @param type
	 * @return void
	 */
	public void createDeal(String title, String text, Date publishDate, Date endDate, String type) {
		this.repo.getDealMap().put(title, new Deal(title, text, publishDate, endDate, type));
	}
	
	/**
	 * Retorna a Oferta com base no título (title)
	 * 
	 * @param title
	 * @return Deal
	 */
	public Deal getDeal(String title) {
		
		// verifica se Map de Ofertas esta vazio.
		if(repo.getDealMap().size() < 1) {
			return null;
		}else {
			// carrega a respectiva Oferta
			Deal deal = this.repo.getDealMap().get(title);
			
			// valida se titulo esta vazio, senão retorna a Oferta.
			if(deal.getTitle() == null) {
				return null;
			}else {
				return deal;
			}
		}
	
	}
	
	/**
	 * Remove Oferta da lista
	 * 
	 * @param title
	 * @return void
	 */
	public void deleteDeal(String title) {
		if(repo.getDealMap().size() > 0) {
			if(repo.getDealMap().get(title) != null) {
				repo.getDealMap().remove(title);
			}
		}
	}
	
	/**
	 * Insere nova Opção de Compra a Oferta 
	 * 
	 * @param dealTitle
	 * @param option
	 * @return void
	 */
	public void addOption(String dealTitle, BuyOption option) {
		repo.getDealMap().get(dealTitle).addOptionInDeal(option);
	}
	
	/**
	 * Retorna uma Map da Ofertas
	 * 
	 * @return
	 */
	public Map<String, Deal> getAllDeal() {
		return repo.getDealMap();

	}
}
