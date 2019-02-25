package br.com.pu.service;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.when;
 
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import br.com.pu.model.Deal;
import br.com.pu.servlet.DealServlet;
import junit.framework.TestCase;

public class DealServiceTest {
	
	DealService dealService;
	
	@Before
	public void init() {
		System.out.println("Inicializando DealServiceTest");
		dealService = new DealService();
	}
	
	@Test
	public void createDeal() throws Exception{
		
		Deal deal = getDeal();
		
		dealService.createDeal(deal.getTitle(), deal.getText(), deal.getPublishDate(), deal.getEndDate(), deal.getType());
		
		Deal tmpDeal = dealService.getDeal(deal.getTitle());
		System.out.println(" tmpDeal.toString() : " + tmpDeal.toString());
		
		assertEquals(tmpDeal.getTitle(), deal.getTitle());
	}



	private Deal getDeal() {
		Date publishDate = null;
		Date endDate = null;
		try {
			publishDate = new SimpleDateFormat("dd/MM/yyyy").parse("24/02/2019");
			endDate = new SimpleDateFormat("dd/MM/yyyy").parse("26/02/2019");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Deal deal = new Deal("Title 1", "Text 1", publishDate, endDate, "Produto");
		
		return deal;
	}

	@After
	public void destroy() {
		System.out.println("DealServiceTest destroying...");

	}
	
}
