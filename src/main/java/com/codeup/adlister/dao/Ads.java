package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();

    List<Ad> specificUserAds(User user);
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);


    Ad findById(long adId);

    void deleteAd(Ad ID);

}
