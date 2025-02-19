package com.processing;

import com.dao.Start;
import com.entity.MonOfUs;
import com.entity.Problem;
import com.entity.Users;
import org.hibernate.ObjectNotFoundException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by yurs1 on 22.06.2015.
 */
@WebServlet("/thisClient")
public class ThisClient extends HttpServlet {
    Users users = new Users();
    MonOfUs monOfUs = new MonOfUs();
    Problem problem = new Problem();

    Start start;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            if (request.getParameter("idcount") != "") {
                users = (Users) start.session.load(Users.class, Integer.parseInt(request.getParameter("idcount")));
                monOfUs = (MonOfUs) start.session.load(MonOfUs.class, Integer.parseInt(request.getParameter("idcount")));
                problem = (Problem) start.session.load(Problem.class, Integer.parseInt(request.getParameter("idcount")));
                String s = "user";
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/thisclient.jsp");

                request.setAttribute("users", users);
                request.setAttribute("monofus", monOfUs);
                request.setAttribute("problem", problem);
                request.setAttribute("tm", s);
                dispatcher.forward(request, response);
            } else {
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/corporate.jsp");
                request.setAttribute("message", "Введіть значення");
                dispatcher.forward(request, response);
            }
        }catch (Exception e){
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/corporate.jsp");
            request.setAttribute("message", "Не існує!");
            dispatcher.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
