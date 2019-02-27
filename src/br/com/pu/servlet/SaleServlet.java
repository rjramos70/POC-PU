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
 * Servlet implementation class SaleServlet
 */
@WebServlet("/SaleServlet")
public class SaleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BuyOptionService optionService = new BuyOptionService();
	DealService dealService = new DealService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaleServlet() {
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
		int ipOption = Integer.parseInt(request.getParameter("idOption"));
		
		dealService.getDeal(title).saleOption(ipOption);
		
		response.sendRedirect(request.getContextPath() + "/sale_list.jsp");
	}

}
