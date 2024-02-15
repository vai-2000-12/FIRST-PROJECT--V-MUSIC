package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class User {
     private Integer User_Id;
     private String Username;
     private String Email;
     private String Password;
     

     public User(Integer User_Id, String Username ,  String Email, String Password){
       this.User_Id = User_Id;
       this.Username = Username;
       this.Email = Email;
       this.Password = Password;
     }

      public User(String Email , String password){
      this.Password = password;
      this.Email = Email;
      }

     public User(){

     }

     public User(String Username , String Email , String Password){
             this.Username = Username;
             this.Email = Email;
             this.Password =Password;
  
     }

     public boolean SiginUser(){
         boolean flag = false;
         
         try{
          Class.forName("com.mysql.cj.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/music_db?user=root&password=9009");
          
          String query = "select User_id,Name from users where Email=? and Password=?";

          PreparedStatement ps = con.prepareStatement(query);
      
            ps.setString(1 , Email);
            ps.setString(2 , Password);  
            
           
         ResultSet  rs =  ps.executeQuery();
         if(rs.next()){
          User_Id = (rs.getInt(1)); 
          Username = (rs.getString(2));
          
          flag = true;
         }

         con.close();
         }catch(SQLException|ClassNotFoundException e){
           e.printStackTrace();
         }
         return flag;
     }

     public boolean addUser(){
      boolean flag = false;
         
      try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/music_db?user=root&password=9009");
        
        String query = "insert into users(Name , Email, Password)  value(?,?,?)";

        PreparedStatement ps = con.prepareStatement(query);
            
          ps.setString(1, Username);
          ps.setString(2, Email);  
          ps.setString(3, Password);
          
         
        int Count = ps.executeUpdate();
         if(Count==1){
               flag = true;
         }   
        con.close();
       }catch(SQLException|ClassNotFoundException e){
         e.printStackTrace();
       }
       return flag;     
     }
     

    public Integer getUser_Id() {
      return User_Id;
    }

    public void setUser_Id(Integer user_Id) {
      User_Id = user_Id;
    }

    public String getUsername() {
      return Username;
    }

    public void setUsername(String username) {
      Username = username;
    }

    public String getEmail() {
      return Email;
    }

    public void setEmail(String email) {
      Email = email;
    }

    public String getPassword() {
      return Password;
    }

    public void setPassword(String password) {
      Password = password;
    }    
}