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
public class ControleurBorne {
    
    
    
          public void miseAJourBorne(Bornes borne) throws SQLException {
              
              // cette fonction retourne l etat dans lequel est une borne passee en parametre
          
            StringBuilder sb = new StringBuilder();
            sb.append("SELECT `etat` FROM `bornes` WHERE `borne_id`='");
            sb.append(borne.getId());
            sb.append("' AND `station_id` ='");
            sb.append(borne.getStation_id());
            sb.append("'");

            GestionBDD gestionBDD = GestionBDD.getInstance();
            ResultSet result_borne = gestionBDD.selectsql(sb.toString());

             while(result_borne.next()){
                 borne.setEtat(result_borne.getBoolean("etat"));
              }
            
             
           
    }
          
     public void MAJBorneLoue(Bornes bornes) throws SQLException {
          
         // lors d'une location on change l 'etat de la borne pour dire que la borne peut recevoir un velo
         // la fonction change dans la base SQL et l'objet en cours  
       
            StringBuilder sb = new StringBuilder();
            sb.append("UPDATE `bornes` SET `etat`=0");
            sb.append(" WHERE `borne_id`=");
            sb.append(bornes.getId());
            sb.append(" AND `station_id`=");
            sb.append(bornes.getStation_id());

            GestionBDD gestionBDD = GestionBDD.getInstance();
            gestionBDD.executeSql(sb.toString());  
            
            bornes.setEtat(true);
            
            
    }
     
       public void MAJBorneRestitue(Bornes bornes) throws SQLException {
          
           // la fonction rechange l etat de la borne pour signifier qu'il y a un velo disponible
            // la fonction change dans la base SQL et l'objet en cours  
           
            StringBuilder sb = new StringBuilder();
            sb.append("UPDATE `bornes` SET `etat`=1");
            sb.append(" WHERE `borne_id`=");
            sb.append(bornes.getId());
            sb.append(" AND `station_id`=");
            sb.append(bornes.getStation_id());

            GestionBDD gestionBDD = GestionBDD.getInstance();
            gestionBDD.executeSql(sb.toString());
            
            bornes.setEtat(false);
            
         
            
    }
    
}
