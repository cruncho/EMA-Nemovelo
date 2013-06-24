/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ema.nemovelo;

import java.math.BigInteger;
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
            
           BigInteger heure = null; 
           BigInteger seconde = BigInteger.valueOf(1000);
           BigInteger minute = BigInteger.valueOf(60);
           
           heure =  new BigInteger(String.valueOf(System.currentTimeMillis()));
           heure = heure.subtract(utilisateur.getHeure());
           heure = heure.divide(seconde);
           heure = heure.divide(minute);
           
           int duree = heure.intValue();
           duree = duree*-1;
           
           System.out.println(heure);
            
            StringBuilder sb = new StringBuilder();
            sb.append("UPDATE `utilisateurs` SET `en_cours`= ");
            sb.append(location);                
            sb.append(" WHERE `user_id`= ");
            sb.append(utilisateur.getId());
            
            GestionBDD gestionBDD = GestionBDD.getInstance();
            gestionBDD.executeSql(sb.toString()); 
            
            ControleurCreditCompte controleurCreditCompte = new ControleurCreditCompte();
            controleurCreditCompte.crediterCompte(duree);
        
    }
   
}
