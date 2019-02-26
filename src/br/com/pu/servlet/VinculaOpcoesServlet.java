package br.com.pu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		Deal deal = this.dealService.getDeal(title);
		
		String[] Ids = request.getParameterValues("ipOpcao");
		int[] IdsInt = new int[Ids.length]; 
		for (int i = 0; i < IdsInt.length; i++){
			IdsInt[i] = Integer.parseInt(Ids[i]); 
		}
		
		System.out.println("Oferta : " + deal.getTitle());
		System.out.println("	detalhe Oferta : " + deal.toString());
		System.out.println("Opções escolhidas");
		for (int id : IdsInt) {
			System.out.println("id: " + id);
			deal.addOption(optionService.getOptionById(id));
		}
		
		response.sendRedirect(request.getContextPath() + "/deal_list.jsp");
	}

}
