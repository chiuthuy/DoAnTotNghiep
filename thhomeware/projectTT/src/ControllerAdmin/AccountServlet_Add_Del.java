package ControllerAdmin;

import java.io.IOException;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.AccountDAOImpl;
import Model.Account;
import Other.SendMail;

@WebServlet("/AccountServlet_Add_Del")
public class AccountServlet_Add_Del extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static AccountDAOImpl accDAO = new AccountDAOImpl();

	public AccountServlet_Add_Del() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * request.setCharacterEncoding("UTF-8");
		 * response.setCharacterEncoding("UTF-8"); String action =
		 * request.getParameter("action"); String ID_Account =
		 * request.getParameter("ID_Account"); String url = ""; try { switch (action) {
		 * case "Delete": accDAO.deleteAccount(ID_Account); url =
		 * "/Admin/account_manager.jsp"; break; } } catch (Exception e) {
		 * e.printStackTrace(); } RequestDispatcher rd =
		 * getServletContext().getRequestDispatcher(url); rd.forward(request, response);
		 */
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		String url = "";
		String username_error = "", password_error = "", email_error = "", fullname_error = "", address_error = "",
				phone_error = "", access_error = "", status_error = "";
		/* String ID_Account = request.getParameter("ID_Account"); */
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String fullname = request.getParameter("fullname");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String acs =request.getParameter("access");
		
       
        if(acs == "" ) {
        	access_error = "Vui l??ng ch???n quy???n truy c???p c???a b???n !";
			request.setAttribute("access_error", access_error);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/Admin/account_insert.jsp");
			rd.forward(request, response);
			return;
		}
		int access = Integer.parseInt(acs);
		String stt =request.getParameter("status");
		 
		if(stt== ""  ) {
			status_error = "Vui l??ng ch???n tr???ng th??i !";
			request.setAttribute("status_error", status_error);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/Admin/account_insert.jsp");
			rd.forward(request, response);
			return;
		}
      
		int status = Integer.parseInt(stt);

		
		// ?????nh d???ng email
				String emailPattern = "^[\\w!#$%&???*+/=?`{|}~^-]+(?:\\.[\\w!#$%&???*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$";
				  Pattern regex = Pattern.compile(emailPattern);
			        Matcher matcher = regex.matcher(email);
			        //?????nh d???ng s??t
			        Pattern pattern = Pattern.compile("^(0)+[0-9]*$");
			        Matcher matcher1 = pattern.matcher(phone);
			        // ?????nh d???ng username
			          Pattern pattern1 = Pattern.compile("^[a-zA-Z0-9-]*$");
			          Matcher matcher2 = pattern1.matcher(username);
           System.out.println("ssssssa"+ username);
		// Validate Username
		if (username.equals("")) {
			username_error = "Vui l??ng nh???p T??i Kho???n c???a b???n !";
		} else {
			if (accDAO.checkAccount(username) == true) {
				username_error = "T??i kho???n n??y ???? ???????c ????ng k??, vui l??ng nh???p t??i kho???n kh??c !";
			}
		}
		if (!matcher2.matches()) {
			username_error = "Username kh??ng g???m k?? t??? ?????c bi???t!";
        } 
		if (username_error.length() > 0) {
			request.setAttribute("username_error", username_error);
		}
		// Validate Password
		if (password.equals("")) {
			password_error = "Vui l??ng nh???p m???t kh???u c???a b???n !";
		}
		if (password_error.length() > 0) {
			request.setAttribute("password_error", password_error);
		}
		// Validate Email
		if (email.equals("")) {
			email_error = "Vui l??ng nh???p Email c???a b???n !";
		} else {
			if (accDAO.checkEmail(email) == true) {
				email_error = "Email n??y ???? ???????c ????ng k??, vui l??ng nh???p Email kh??c !";
			}
		}
		if (!email.equals("") && !matcher.find() ) {
			email_error = "Vui l??ng nh???p ????ng ?????nh d???ng email !";
		}
		if (email_error.length() > 0) {
			request.setAttribute("email_error", email_error);
		}
		// Validate Fullname
		if (fullname.equals("")) {
			fullname_error = "Vui l??ng nh???p h??? v?? t??n c???a b???n !";
		}
		if(!fullname.equals("") &&  fullname.length()<4){
			address_error = "Vui l??ng nh???p ????ng h??? v?? t??n!";
			}
		if (fullname_error.length() > 0) {
			request.setAttribute("fullname_error", fullname_error);
		}
		// Validate d???a Ch???
		if (address.equals("")) {
			address_error = "Vui l??ng nh???p ?????a ch??? c???a b???n !";
		}
		if(!address.equals("") &&  address.length()<6){
			address_error = "Vui l??ng nh???p ????ng ?????a ch??? !";
			}
		if (address_error.length() > 0) {
			request.setAttribute("address_error", address_error);
		}
		// Validate SDT
		if (phone.equals("")) {
			phone_error = "Vui l??ng nh???p s??? ??i???n tho???i c???a b???n !";
		}
		if(!phone.equals("") && phone.length()>12 || phone.length()<8){
			phone_error = "S??? ??i???n tho???i ph???i tr??n 8 s??? v?? d?????i 12 s??? !";
			}
		if (!matcher1.matches()) {
			phone_error = "Vui l??ng nh???p ????ng ?????nh d???ng s??? ??i???n tho???i!";
        } 
		if (phone_error.length() > 0) {
			request.setAttribute("phone_error", phone_error);
		}
		// Validate Quyen Truy C???p
		
		if (access == 1 || access == 2) {
			request.setAttribute("access_error", access_error);
		}
		// Validate Tr???ng Th??i
		
		if (status == 1 || status == 2) {
			request.setAttribute("status_error", status_error);
		}

		request.setAttribute("username", username);
		request.setAttribute("password", password);
		request.setAttribute("email", email);
		request.setAttribute("fullname", fullname);
		request.setAttribute("address", address);
		request.setAttribute("phone", phone);
		request.setAttribute("access", access);
		request.setAttribute("status", status);
		try {
			switch (action) {
			case "Insert":
				if (username_error.length() == 0 && password_error.length() == 0 && email_error.length() == 0
						&& fullname_error.length() == 0 && address_error.length() == 0 && phone_error.length() == 0
						&& access_error.length() == 0 && status_error.length() == 0) {
					Date id = new Date();
					String mtk = "KH" + id.getTime();
					Account acc = new Account(mtk, username, password, email, fullname, address, phone, access, status);
					accDAO.insertAccount(acc);
					url = "/Admin/account_manager.jsp";
					SendMail.sendMail(acc.getEmail(), "TH Homeware",
							"Xin Ch??o, " + acc.getEmail() + "\nB???n ???? ????ng k?? th??nh c??ng t??i kho???n t???i TH Homeware."
									+ "\nUsername: " + acc.getUsername() + "\nPassword: " + acc.getPassword());
				break;
				} else {
					url = "/Admin/account_insert.jsp";
				}
			
				
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
