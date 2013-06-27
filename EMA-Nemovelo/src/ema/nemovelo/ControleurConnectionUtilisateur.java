/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ema.nemovelo;

import java.math.BigInteger;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 *
 * @author Clément
 */
public class ControleurConnectionUtilisateur {
    
      public int miseAJourUtilisateur() throws SQLException {
          
           Utilisateurs utilisateur = Utilisateurs.getInstance();
          
            StringBuilder sb = new StringBuilder();
            sb.append("SELECT `user_id`, `login`,`password`,`location`,`nom`, `prenom`,`en_cours`,`heure` FROM `utilisateurs` WHERE `login`='");
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
                 utilisateur.setId(result.getInt("user_id"));
                 utilisateur.setLocation(result.getInt("location"));
                 utilisateur.setNom(result.getString("nom"));
                 utilisateur.setPrenom(result.getString("prenom"));
                 utilisateur.setLocation_en_cours(result.getBoolean("en_cours"));
                 utilisateur.setHeure(new BigInteger(result.getString("heure")));

              }
            // System.out.println("ID: "+id);
             
           return(id);
    }
    
}
