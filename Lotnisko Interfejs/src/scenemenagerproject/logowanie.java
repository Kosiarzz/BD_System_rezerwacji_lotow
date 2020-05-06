/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package scenemenagerproject;

import java.net.URL;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.TextField;
import java.sql.*;
import java.util.ResourceBundle;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.control.MenuButton;
import javafx.scene.control.MenuItem;
import javafx.scene.control.PasswordField;

public class logowanie implements Initializable {
    
    public String LOGIN;
    
    @FXML
    private TextField Login;
    
    @FXML
    private PasswordField Haslo;
    
    @FXML
    private Label blad;
    
    @FXML
    private MenuButton wybor;
    
    @FXML
    private MenuItem Klient, Pracownik;
    
    String zlogin,zhaslo,zwybor;
    
    @FXML
    private void Zaloguj(){
        zlogin = Login.getText();
        zhaslo = Haslo.getText();
        logowanie log = new logowanie();
        LOGIN = zlogin;
        
        System.out.println(zlogin+" "+zhaslo);
        if("Klient".equals(wybor.getText()) && sprawdzenie_danych())
        {
            System.out.println("Logowanie klient");
            polaczenie_klient();
        }
        else if("Pracownik".equals(wybor.getText()) && sprawdzenie_danych())
        {
            System.out.println("Logowanie pracownik");
            polaczenie_pracownik();
        }
        else if(!sprawdzenie_danych())
        {
            System.out.println("Nie podano danych logowania.");
            blad.setText("Wprowadź dane do logowania!");
            blad.setVisible(true);
        }
        else
        {
            System.out.println("Nie wybrano typu konta.");
            blad.setText("Wybierz typ konta!");
            blad.setVisible(true);
        }

    }
    
    @FXML
    private void cklient(){
        wybor.setText("Klient");
        blad.setVisible(false);
    }
    
    @FXML
    private void cpracownik(){
        wybor.setText("Pracownik");
        blad.setVisible(false);
    }
    
    @FXML
    private void Zarejestruj(){
        SceneMenager.renderScene("rejestracja");
    }
    
    @Override 
    public void initialize(URL url, ResourceBundle rb) {
        
    } 
    
    public void polaczenie_klient(){
       try{   
        Class.forName("oracle.jdbc.driver.OracleDriver");  
        Connection con=DriverManager.getConnection(  
        "jdbc:oracle:thin:@localhost:1521:xe","C##Patryk","Patryk011");  
        Statement stmt=con.createStatement();  

        //step4 execute query  
        ResultSet rs=stmt.executeQuery("select * from KLIENCI_LOGOWANIE where LOGIN='"+zlogin+"' AND HASLO='"+zhaslo+"'");  
        while(rs.next()){
            System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
            SceneMenager.renderScene("uzytkownik");
        }
        con.close();  
           System.out.println("Podany login lub hasło jest nieprawidłowe.");
           blad.setText("Podany login lub hasło jest nieprawidłowe!");
           blad.setVisible(true);
        }
        catch(Exception e)
        { 
            System.out.println(e);
        } 
        
    }
    
    public void polaczenie_pracownik(){
        try{   
        Class.forName("oracle.jdbc.driver.OracleDriver");  
        Connection con=DriverManager.getConnection(  
        "jdbc:oracle:thin:@localhost:1521:xe","C##Patryk","Patryk011");  
        Statement stmt=con.createStatement();  

        //step4 execute query  
        ResultSet rs=stmt.executeQuery("select * from PRACOWNICY_LOGOWANIE where LOGIN='"+zlogin+"' AND HASLO='"+zhaslo+"'");  
        while(rs.next()){
           // System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5));
            if("Pracownik".equals(rs.getString(4)))
            {
                System.out.println("Logowanie uzytkownik");
                SceneMenager.renderScene("pracownik");
            }
            else if("Koordynator".equals(rs.getString(4)))
            {
                System.out.println("Logowanie koordynator");
                SceneMenager.renderScene("koordynator"); 
            }
            else
            {
                System.out.println("blad");
            }
        }
        con.close();  
           System.out.println("Podany login lub hasło jest nieprawidłowe.");
           blad.setText("Podany login lub hasło jest nieprawidłowe!");
           blad.setVisible(true);
        }
        catch(Exception e)
        { 
            System.out.println(e);
        } 
    }
    
    private boolean sprawdzenie_danych(){
        
        String login,haslo,wynik="FALSE";
        login = Login.getText();
        haslo = Haslo.getText();
        
        
         try{
            Class.forName("oracle.jdbc.driver.OracleDriver");

            Connection connection = DriverManager.getConnection(
            "jdbc:oracle:thin:@localhost:1521:xe","C##Patryk","Patryk011"); 
            CallableStatement cstmt = connection.prepareCall("{?=call LOGOWANIE('"+login+"','"+haslo+"')}");
            cstmt.registerOutParameter(1, Types.VARCHAR);
            
            cstmt.execute();
            wynik=cstmt.getString(1);
            //System.out.println("Wynik = "+wynik);          
            connection.close();
            
        } catch(Exception e){ 
            System.out.println(e); 
        }
         
        if("TRUE".equals(wynik))
            {
                return true;
            }
            else
            {
                return false;
            }
    }
    
}  
