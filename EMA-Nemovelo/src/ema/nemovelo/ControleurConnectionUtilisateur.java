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
          
          // la fonction va se connecter à la BDD et recuperer les infos sur l'utilisateur courant
          // retourne un chiffre : 0  probleme de chargement des donnees
          // si != 0 : pas de pb 
          
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
                 utilisateur.setId(result.getInt("user_id"));
                 utilisateur.setLocation(result.getInt("location"));
                 utilisateur.setNom(result.getString("nom"));
                 utilisateur.setPrenom(result.getString("prenom"));
                 utilisateur.setLocation_en_cours(result.getBoolean("en_cours"));
                 utilisateur.setHeure(new BigInteger(result.getString("heure")));

              }

           return(id);
    }
    
}
