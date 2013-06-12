/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ema.nemovelo;

import java.sql.ResultSet;
import java.sql.SQLException;


/**
 *
 * @author Clément
 */
public class ControleurConnectionUtilisateur {
    
      public int connectionUtilisateur(Utilisateurs utilisateur) throws SQLException {
          
            StringBuilder sb = new StringBuilder();
            sb.append("SELECT `login`,`password` FROM `utilisateurs` WHERE `login`='");
            sb.append(utilisateur.getLogin());
            sb.append("' AND `password` ='");
            sb.append(utilisateur.getPassword());
            sb.append("'");

            GestionBDD gestionBDD = GestionBDD.getInstance();
            ResultSet result = gestionBDD.selectsql(sb.toString());
            
        
            int id = 0;
             while(result.next()){
                 id++;
              //  System.out.println("Login "+result.getString("login"));
              //  System.out.println("Password "+result.getString("password"));
                 
                
              }
            // System.out.println("ID: "+id);
             
           return(id);
    }
    
}
