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
    
    
    public void ajoutUtilisateur() {
       
       // fonction simple permettant l'ajout d'un utilisateur dans la BDD 
        
            Utilisateurs utilisateur = Utilisateurs.getInstance();
        
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
