package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.KoneksiDao;

import model.ProdukMod;


@WebServlet("/")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private KoneksiDao koneksidao;
	
	public void init() {
		koneksidao = new KoneksiDao();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		try {
			switch(action) {
			
			case "/insert":
				insertTask(request,response);
				break;
				
			case "/list":
				listTask(request,response);
				break;
			}
		}catch(SQLException e) {
			throw new ServletException(e);
		} catch (Exception e) {
			e.printStackTrace();
		}
		}
	

	private void listTask(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
	List<ProdukMod> listTask = koneksidao.PeekProdukMod();
	request.setAttribute("listTask", listTask);
	RequestDispatcher dispatcher = request.getRequestDispatcher("adminfoodlist.jsp");
	dispatcher.forward(request, response);
	
	}
	
	private void insertTask(HttpServletRequest request, HttpServletResponse response) throws Exception,SQLException,IOException, ServletException{
		String kd_produk = request.getParameter("kd_produk");
		String nm_produk = request.getParameter("nm_produk");
		String harga_produk = request.getParameter("harga_produk");
		String qty = request.getParameter("qty");
		
		ProdukMod newProdukMod = new ProdukMod(kd_produk,nm_produk,harga_produk,qty);
		koneksidao.insertTask(newProdukMod);
		response.sendRedirect("adminfoodlist.jsp");
	}


	

}
