package br.com.pu.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.pu.model.BuyOption;
import br.com.pu.model.Deal;
import br.com.pu.service.BuyOptionService;
import br.com.pu.service.DealService;

/**
 * Servlet implementation class VinculaOpcoesServlet
 */
@WebServlet("/VinculaOpcoesServlet")
public class VinculaOpcoesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BuyOptionService optionService = new BuyOptionService();
	DealService dealService = new DealService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VinculaOpcoesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String action = request.getParameter("action");

		// Verifica se é para vincular ou desvincular a oferta	
		// Caso: Vincula
		if (action.equalsIgnoreCase("vincular")) {
			
			String[] Ids = request.getParameterValues("ipOpcaoVincular");
			int[] IdsInt = new int[Ids.length]; 
			for (int i = 0; i < IdsInt.length; i++){
				IdsInt[i] = Integer.parseInt(Ids[i]); 
			}
			for (int id : IdsInt) {
				BuyOption option = optionService.getOptionById(id);
				option.setVinculado(true);
				dealService.getDeal(title).addOptionInDeal(option);
			}
		}
		
		// Caso: Desvincula
		if (action.equalsIgnoreCase("desvincular")) {
			// recebe a lista de Opções a serem desvinculadas
			String[] Ids = request.getParameterValues("ipOpcaoDesvincular");
			
			if(Ids != null) {
				int[] IdsInt = new int[Ids.length]; 
				for (int i = 0; i < IdsInt.length; i++){
					IdsInt[i] = Integer.parseInt(Ids[i]); 
				}
				
				for (int id : IdsInt) {
					optionService.getOptionById(id).setVinculado(false);
					dealService.getDeal(title).removeOptionById(id);
				}
			}else {
				// Remover todos as opções da lista da oferta
				if(dealService.getDeal(title).getOptions().size() > 0) {
					// Setar as opções da lista para false
					for(int i = 0; i < dealService.getDeal(title).getOptions().size(); i++) {
						optionService.getOptionById(dealService.getDeal(title).getOptions().get(i).getId()).setVinculado(false);
					}
					dealService.getDeal(title).removeAllOptions();
				}
			}

		}
		
		// redireciona para a página de vinculação de Opções com Oferta. 
		request.setAttribute("title", title);
		request.getRequestDispatcher("vincular_opcoes.jsp").forward(request, response); 
		
		
	}

}
