package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="DeleteServlet", urlPatterns = "/ads/delete")
public class DeleteServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Long adId = Long.parseLong(request.getParameter("id"));
        User currentUser = (User) request.getSession().getAttribute("user");

        Ad ad = DaoFactory.getAdsDao().findById(adId);

        if(currentUser != null && currentUser.getId() == ad.getUserId()) {
            DaoFactory.getAdsDao().deleteAd(ad);
            response.sendRedirect("/ads");
        }else {
            response.sendRedirect("/login");
        }
    }
}
