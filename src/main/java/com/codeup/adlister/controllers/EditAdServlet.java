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
    long adId;
    User user;
    Ad ad;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        if (request.getSession().getAttribute("user") == null)
        {
            response.sendRedirect("/login");
            return;
        }
        adId = Long.parseLong(request.getParameter("id"));
        user = (User) request.getSession().getAttribute("user");

        ad = DaoFactory.getAdsDao().findById(adId);

        System.out.println(adId);
        System.out.println(ad.getTitle());
        request.getRequestDispatcher("/WEB-INF/ads/editAd.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

//        long adId = Long.parseLong(request.getParameter("id"));
//        User user = (User) request.getSession().getAttribute("user");
//
//        Ad ad = DaoFactory.getAdsDao().findById(adId);

//        String title = ad.getTitle();
//        request.setAttribute("title", title);

        String img = request.getParameter("img_url");
        if(img.isEmpty())
        {
            img = "https://core.trac.wordpress.org/raw-attachment/ticket/45927/placeholder-image-portrait.png";
        }

        Ad editAd = new Ad(
                ad.getId(), // ad id
                user.getId(), // user id foreign key
                request.getParameter("title"),
                request.getParameter("description"),
                img,
                request.getParameter("gender"),
                Double.parseDouble(request.getParameter("price")),
                Integer.parseInt(request.getParameter("age"))
        );

        DaoFactory.getAdsDao().editAd(editAd);
        response.sendRedirect("/profile");

    }
}
