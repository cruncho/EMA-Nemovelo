/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ema.nemovelo;

/**
 *
 * @author Clément
 */
public class Bornes {
    
    
    //Classe Bornes finie par un id, un station_id et un etat
   
    int id;
    int station_id;
    boolean etat;

    public Bornes() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStation_id() {
        return station_id;
    }

    public void setStation_id(int station_id) {
        this.station_id = station_id;
    }

    public boolean isEtat() {
        return etat;
    }

    public void setEtat(boolean etat) {
        this.etat = etat;
    }
    
    
    
    
}
