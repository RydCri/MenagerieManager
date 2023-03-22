package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/ads/edit")
public class EditAdServlet extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
//    {
//        if (request.getSession().getAttribute("user") == null)
//        {
//            response.sendRedirect("/login");
//            return;
//        }
//        request.getParameter("id");
//
//        request.getRequestDispatcher("/WEB-INF/ads/editAd.jsp").forward(request, response);
//    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        request.getRequestDispatcher("/WEB-INF/ads/editAd.jsp").forward(request, response);

        long adId = Long.parseLong(request.getParameter("id"));
        User user = (User) request.getSession().getAttribute("user");

        Ad ad = DaoFactory.getAdsDao().findById(adId);

        String action = request.getParameter("id");
//        if(action != null)
//        {

//        }
        System.out.println(adId);
        System.out.println(ad.getTitle());

        String title = ad.getTitle();
        request.setAttribute("title", title);

//        Ad editAd = new Ad(
//                request.getParameter("title");
//        );

//        response.sendRedirect("/ads/edit");

    }
}
