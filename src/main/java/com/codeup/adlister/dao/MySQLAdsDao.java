package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.util.Password;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {

            String insertQuery = "INSERT INTO ads(user_id, title, description, img_url, gender, price, age) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.setString(4, ad.getImg_url());
            stmt.setString(5, ad.getGender());
            stmt.setDouble(6, ad.getPrice());
            stmt.setInt(7, ad.getAge());

            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    @Override
    public Ad findById(long adId, long userId)
    {
        String query = "SELECT * FROM users AS u\n" +
                "JOIN ads AS a\n" +
                "ON a.id = ? AND (u.id = ? AND a.user_id = ?)";
        try
        {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, adId);
            stmt.setLong(2, userId);
            stmt.setLong(3, userId);
            ResultSet rs = stmt.executeQuery();
            Ad userAd = null;
            while (rs.next())
            {
                userAd = extractAd(rs);
            }

            return userAd;
        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getLong("id"),
            rs.getLong("user_id"),
            rs.getString("title"),
            rs.getString("description"),
            rs.getString("img_url"),
            rs.getString("gender"),
            rs.getDouble("price"),
            rs.getInt("age")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }



    public static void main(String[] args)
    {
        System.out.println(DaoFactory.getAdsDao().findById(2, 1));
    }

}
