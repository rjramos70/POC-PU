package br.com.pu.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.pu.service.BuyOptionService;

/**
 * Servlet implementation class BuyOptionServlet
 */
@WebServlet("/BuyOptionServlet")
public class BuyOptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BuyOptionService optionService = new BuyOptionService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyOptionServlet() {
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
		
		System.out.println("request.getParameter(\"title\") : " + request.getParameter("title"));
		System.out.println("request.getParameter(\"normalPrice\") : " + request.getParameter("normalPrice"));
		System.out.println("request.getParameter(\"salePrice\") : " + request.getParameter("salePrice"));
		System.out.println("request.getParameter(\"percentageDiscount\") : " + request.getParameter("percentageDiscount"));
		System.out.println("request.getParameter(\"quantityCupom\") : " + request.getParameter("quantityCupom"));
		System.out.println("request.getParameter(\"startDate\") : " + request.getParameter("startDate"));
		System.out.println("request.getParameter(\"endDate\") : " + request.getParameter("endDate"));
		
		String title = request.getParameter("title");
		Double normalPrice = Double.valueOf(request.getParameter("normalPrice").replaceAll(",", "."));
		Double salePrice = Double.valueOf(request.getParameter("salePrice").replaceAll(",", "."));
		Double percentageDiscount = Double.valueOf(request.getParameter("percentageDiscount").replaceAll(",", "."));
		long quantityCupom = Long.parseLong(request.getParameter("quantityCupom"));
		
		Date startDate = null;
		Date endDate = null;
		try {
			startDate = new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("startDate"));
			endDate = new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("endDate"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(this.optionService.getOptionByTitle(title) == null) {
			this.optionService.insertOption(title, normalPrice, salePrice, percentageDiscount, quantityCupom, startDate, endDate);
		}
		
		response.sendRedirect(request.getContextPath() + "/buy_option_list.jsp");
	}

}
