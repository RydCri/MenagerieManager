package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/deleteProfile")
public class DeleteProfileServlet extends HttpServlet
{
    User user;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
         user = (User) request.getSession().getAttribute("user");
        if(user != null){
            response.sendRedirect("/ads");
        }else {
            response.sendRedirect("/login");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        if(user != null && user.getId() == DaoFactory.getUsersDao().findByUsername(user.getUsername()).getId()) {
            DaoFactory.getUsersDao().deleteUser(user);
            request.getSession().invalidate();
            response.sendRedirect("/ads");
        }
    }
}
