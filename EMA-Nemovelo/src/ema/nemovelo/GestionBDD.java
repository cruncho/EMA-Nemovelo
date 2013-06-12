/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ema.nemovelo;


import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.*;

/**
 *
 * @author clement.defourneaux
 */
public class GestionBDD {

    private static GestionBDD instance = new GestionBDD();
    Connection conn;

    public static GestionBDD getInstance() {
        return instance;
    }

    private GestionBDD() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/nemovelo?user=root");
        } catch (SQLException ex) {
            Logger.getLogger(GestionBDD.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(GestionBDD.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void executeSql(String sql) {
        try {
            PreparedStatement pstnt = conn.prepareStatement(sql);
            pstnt.execute();

        } catch (SQLException ex) {
            Logger.getLogger(this.getClass().getName()).log(Level.SEVERE, null, ex);
        }     
    }
    
    public ResultSet selectsql(String sql) {
            ResultSet resultats = null;
        try {
        Statement stmt = conn.createStatement();
        resultats = stmt.executeQuery(sql);
        } 
        catch (SQLException ex) {
        Logger.getLogger(this.getClass().getName()).log(Level.SEVERE, null, ex);
        }
        return (resultats);
        
    }
}
