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
            // System.out.println("ID: "+id);
             
           
    }
    
}
