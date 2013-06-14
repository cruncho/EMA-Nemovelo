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
public class ControleurStation {
    public void miseAJourStation(Station station) throws SQLException {
          
            StringBuilder sb = new StringBuilder();
            sb.append("SELECT  `Nom`,`bornes`FROM `stations` WHERE `station_id`='");
            sb.append(station.getId());
            sb.append("'");

            GestionBDD gestionBDD = GestionBDD.getInstance();
            ResultSet result_station = gestionBDD.selectsql(sb.toString());
            
        
            
             while(result_station.next()){
                                               
                 station.setNom(result_station.getString("Nom"));
                 station.setBornes(result_station.getInt("bornes"));
                 
                
              }
            // System.out.println("ID: "+id);
             
          
    }
    
}
