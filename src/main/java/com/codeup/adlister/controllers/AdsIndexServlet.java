package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads/index")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Ad> ads = DaoFactory.getAdsDao().all();
        String sort = request.getParameter("sort");
        if (sort == null){
            request.setAttribute("ads",ads);
        }else if (sort.equals ("asc")) {
            Collections.sort(ads, Comparator.comparing(Ad::getTitle).reversed());
            request.setAttribute("ads",ads);
        }else if (sort.equals("dsc")) {
            Collections.sort(ads, Comparator.comparing(Ad::getTitle));
            request.setAttribute("ads",ads);
        }
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);

    }
}
