package com.blvp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

/**
 * Created on 07.04.17.
 */
@WebServlet({
        "/users"
})
public class UserServlet extends HttpServlet {

    ConcurrentHashMap<Long, User> users = new ConcurrentHashMap<>();
    AtomicLong sequence = new AtomicLong(0);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("users", users);
        req.getServletContext().getRequestDispatcher("/users.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        Boolean gender = Boolean.valueOf(req.getParameter("gender"));
        users.put(sequence.getAndIncrement(), new User(firstName, lastName, gender));
        resp.sendRedirect("/users");
    }
}
