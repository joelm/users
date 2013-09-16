package com.rulefinancial.doman;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;


public class User implements Serializable {

    private Integer userId;
    private String userName;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private Date createdOn;
    /*private Set<CandidateAssessment> assessments = new HashSet<CandidateAssessment>(0);*/


    public User() {
    }

    public User(String u, String password) {
        this.userName = u;
        this.password = password;
    }

    public User(String u, String firstName, String lastName,
                String email, String password, Date createdOn) {
       this.userName = u;
       this.firstName = firstName;
       this.lastName = lastName;
       this.email = email;
       this.password = password;
       this.createdOn = createdOn;
       //this.assessments = assessments;
    }


    public Integer getUserId() {
        return this.userId;
    }
    
    public void setUserId(Integer userId) {
        this.userId = userId;
    }


    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getFirstName() {
        return this.firstName;
    }
    
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return this.lastName;
    }
    
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    public Date getCreatedOn() {
        return this.createdOn;
    }
    
    public void setCreatedOn(Date createdOn) {
        this.createdOn = createdOn;
    }


/*    public Set<CandidateAssessment> getAssessments() {
        return this.assessments;
    }
    
    public void setGames(Set<CandidateAssessment> assessments) {
        this.assessments = assessments;
    }*/


}


