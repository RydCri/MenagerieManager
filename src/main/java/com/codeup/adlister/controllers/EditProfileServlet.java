package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.EditProfileServlet", urlPatterns = "/edit-profile")
public class EditProfileServlet extends HttpServlet {
    User user;
    String username;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null)
        {
            response.sendRedirect("/login");
            return;
        }
        user = (User) request.getSession().getAttribute("user");
        username = user.getUsername();

        System.out.println(user.getId());
        System.out.println(username);

        request.getRequestDispatcher("/WEB-INF/editProfile.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        User editUser = new User(
                user.getId(),
                request.getParameter("username"),
                request.getParameter("gender"),
                request.getParameter("email"),
                Password.hash(request.getParameter("password"))
        );

        DaoFactory.getUsersDao().editUser(editUser);
        request.getSession().invalidate();
        response.sendRedirect("/logout");
    }
}
