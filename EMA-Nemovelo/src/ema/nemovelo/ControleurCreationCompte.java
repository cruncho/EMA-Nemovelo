/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ema.nemovelo;

/**
 *
 * @author Clément
 */
public class ControleurCreationCompte {
    
    
    public void traiterDemandeUtilisateur(Utilisateurs utilisateur) {
        
         StringBuilder sb = new StringBuilder();
          sb.append("insert into `utilisateurs`(`nom`,`prenom`,`login`,`password`) ");
            sb.append(" values('");
            sb.append(utilisateur.getNom());
            sb.append("','");
            sb.append(utilisateur.getPrenom());
            sb.append("','");
            sb.append(utilisateur.getLogin());
            sb.append("','");
            sb.append(utilisateur.getPassword());
            sb.append("')");

            GestionBDD gestionBDD = GestionBDD.getInstance();
            gestionBDD.executeSql(sb.toString());
    }
    
}
