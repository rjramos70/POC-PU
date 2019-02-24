package br.com.pu.servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.pu.model.Deal;
import br.com.pu.model.Type;
import br.com.pu.service.DealService;

/**
 * Servlet implementation class DealServlet
 */
@WebServlet("/DealServlet")
public class DealServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DealService dealService = new DealService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DealServlet() {
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
	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		
		// DateFormat
		
		
		
		String title = request.getParameter("title");
		String text = request.getParameter("text");
		Date publishDate = null;
		Date endDate = null;
		try {
			publishDate = new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("publishDate"));
			endDate = new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("endDate"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String type = request.getParameter("tipo");
		/*
		System.out.println("=========== Values ================= ");
		System.out.println(" title: " + title);
		System.out.println(" text: " + text);
		System.out.println(" publishDate: " + publishDate);
		System.out.println(" endDate: " + endDate);
		System.out.println(" type: " + type);
		*/
		dealService.creareDeal(title, text, publishDate, endDate, type);
		
		// Deal d = dealService.getDeal(title);
		// System.out.println("Deal : " + d.toString());
		
		response.sendRedirect(request.getContextPath() + "/index.jsp");
	
	}

}