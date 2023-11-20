package com.member.bean;
import java.util.Date;


public class MemberVO {
    private int sid;
    private String username;
    private String userid;
    private String password;
    private String email;
    private String phonenumber;
    private String blogurl;
    private String photo;
    private String detail;
    private Date regdate;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getBlogurl() {
        return blogurl;
    }

    public void setBlogurl(String blogurl) {
        this.blogurl = blogurl;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }

    public MemberVO() {
    }

    public int getSid(){
        return sid;
    }
    public void setSid(int sid){
        this.sid = sid;
    }

    public String getUsername(){
        return username;
    }
    public void setUsername(String username){
        this.username = username;
    }

    public String getUserid(){
        return userid;
    }
    public void setUserid(String userid){
        this.userid = userid;
    }



}
