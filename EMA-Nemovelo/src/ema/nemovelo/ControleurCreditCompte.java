/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ema.nemovelo;

/**
 *
 * @author Clem
 */
public class ControleurCreditCompte {
    
     public void crediterCompte (int location) {
         
         Utilisateurs utilisateur = Utilisateurs.getInstance();
         StringBuilder sb = new StringBuilder();
          sb.append("UPDATE `utilisateurs` SET `location`=location+");
            sb.append(location);
            sb.append(" WHERE `user_id`=");
            sb.append(utilisateur.getId());
            
            GestionBDD gestionBDD = GestionBDD.getInstance();
            gestionBDD.executeSql(sb.toString());
            
    }
}
