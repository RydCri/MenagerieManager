package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;
    private String img_url;
    private String gender;
    private double price;
    private int age;
    private String username; //for findById only


    public Ad(long id, long userId, String title, String description) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    public Ad(long userId, String title, String description) {
        this.userId = userId;
        this.title = title;
        this.description = description;
    }


    // constructor with everything on it for extract DAO method
    public Ad(long id, long userId, String title, String description, String img_url, String gender, double price, int age)
    {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.img_url = img_url;
        this.gender = gender;
        this.price = price;
        this.age = age;
    }

    // additional features constructor
    public Ad(long userId, String title, String description, String img_url, String gender, double price, int age)
    {
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.img_url = img_url;
        this.gender = gender;
        this.price = price;
        this.age = age;
    }

    //findById constructor


    public Ad(String username, String title, String description, String img_url, String gender, double price, int age) {
        this.username = username;
        this.title = title;
        this.description = description;
        this.img_url = img_url;
        this.gender = gender;
        this.price = price;
        this.age = age;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImg_url() {
        return img_url;
    }

    public void setImg_url(String img_url) {
        this.img_url = img_url;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

//    @Override
//    public String toString() {
//        return "Ad{" +
//                "id=" + id +
//                ", userId=" + userId +
//                ", title='" + title + '\'' +
//                ", description='" + description + '\'' +
//                ", img_url='" + img_url + '\'' +
//                ", gender='" + gender + '\'' +
//                ", price=" + price +
//                ", age=" + age +
//                '}';
//    }


    @Override
    public String toString() {
        return "Ad{" +
                "title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", img_url='" + img_url + '\'' +
                ", gender='" + gender + '\'' +
                ", price=" + price +
                ", age=" + age +
                ", username='" + username + '\'' +
                '}';
    }
}
