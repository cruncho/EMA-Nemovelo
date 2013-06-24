/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ema.nemovelo;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Clem
 */
public class ControleurLocation {
    
 public void miseAJourLocation(boolean location) throws SQLException {
          
     
     
            Utilisateurs utilisateur = Utilisateurs.getInstance();
            StringBuilder sb = new StringBuilder();
            sb.append("UPDATE `utilisateurs` SET `en_cours`=");
            sb.append(location);
            sb.append(", `heure`=");
            sb.append(System.currentTimeMillis());
            sb.append(" WHERE `user_id`=");
            sb.append(utilisateur.getId());
                      
            
            GestionBDD gestionBDD = GestionBDD.getInstance();
            gestionBDD.executeSql(sb.toString());    
    }
 
 public void retourVelo(boolean location) throws SQLException {
          
            Utilisateurs utilisateur = Utilisateurs.getInstance();
            StringBuilder sb = new StringBuilder();
            sb.append("UPDATE `utilisateurs` SET `en_cours`=");
            sb.append(location);
            sb.append(" WHERE `user_id`=");
            sb.append(utilisateur.getId());
            
            
            
            GestionBDD gestionBDD = GestionBDD.getInstance();
            gestionBDD.executeSql(sb.toString()); 
            
            miseAJourUtilisateurLocation();
    }
 
  public void miseAJourUtilisateurLocation( ) throws SQLException {
          
             Utilisateurs utilisateur = Utilisateurs.getInstance();
            StringBuilder sb = new StringBuilder();
            sb.append("SELECT `location`, `heure` FROM `utilisateurs` WHERE `login`='");
            sb.append(utilisateur.getLogin());
            sb.append("'");

            GestionBDD gestionBDD = GestionBDD.getInstance();
            ResultSet result = gestionBDD.selectsql(sb.toString());
            
             while(result.next()){
            int location = result.getInt("location");
            int heure_location = Integer.parseInt(result.getString("heure"));
            }
            
             
             
             
             
          //  utilisateur.setLocation((int) (utilisateur.getLocation()-(heure_location-System.currentTimeMillis())));
            System.out.println(utilisateur.getLocation());
        
           
    }
 
 
 
    
}
