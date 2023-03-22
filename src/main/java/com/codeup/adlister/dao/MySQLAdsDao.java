package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
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
    public List<Ad> specificUserAds(User user) {
        String query = "SELECT * FROM users AS u\n" +
                "JOIN ads AS a\n" +
                "ON a.user_id = ? AND u.id = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, user.getId());
            stmt.setLong(2, user.getId());
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
            stmt.setInt(7, ad.getAge()); // maybe change later to String type

            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }



    // FIND BY ID
    @Override
    public Ad findById(long adId)
    {

        String query = "SELECT * FROM ads WHERE id = ?";

        try
        {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, adId);
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
            rs.getInt("age")// maybe change later to String type
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

    // DELETE AD METHOD
    @Override
    public void deleteAd(Ad ID) {

    try {
        String query = "DELETE FROM ads WHERE id=?";
        PreparedStatement preparedStmt = connection.prepareStatement(query);
        preparedStmt.setLong(1, ID.getId());

        // execute the preparedstatement
        preparedStmt.execute();
        preparedStmt.executeUpdate();
    } catch (Exception e) {
        throw new RuntimeException(e);
    }
}


    // EDIT AD METHOD
    @Override
    public void editAd(Ad ad)
    {
        String query = """
                UPDATE ads 
                SET title = ?, description = ?,
                img_url = ?, gender = ?,
                price = ?, age = ?
                WHERE id = ? 
                """;
        try
        {
            String img = ad.getImg_url();

            if(img.isEmpty())
            {
                img = "https://core.trac.wordpress.org/raw-attachment/ticket/45927/placeholder-image-portrait.png";
            }

            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, ad.getTitle());
            stmt.setString(2, ad.getDescription());
            stmt.setString(3, img);
            stmt.setString(4, ad.getGender());
            stmt.setDouble(5, ad.getPrice());
            stmt.setInt(6, ad.getAge()); // maybe change later to String type
            stmt.setLong(7, ad.getId());

            stmt.executeUpdate();

        }
        catch (SQLException e)
        {
            throw new RuntimeException(e);
        }
    }



    // TESTING THE METHODS
    public static void main(String[] args)
    {
        Ad ad = new Ad(1,1, "Test","test desc", "", "female", 123, 1);

        System.out.println(DaoFactory.getAdsDao().findById(1));

        DaoFactory.getAdsDao().editAd(ad);

        System.out.println(DaoFactory.getAdsDao().findById(1));

    }

}
