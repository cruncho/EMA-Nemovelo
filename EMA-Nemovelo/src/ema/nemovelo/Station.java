/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ema.nemovelo;

/**
 *
 * @author Clément
 */
public class Station {
    
    private static Station instance = new Station();
    
    public static Station getInstance() {
        return instance;
    }
    
    
    int id;
    String nom;
    int bornes;

    public Station() {
        
    } 
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getNom() {
        return nom;
    }
    public void setNom(String nom) {
        this.nom = nom;
    }
    public int getBornes() {
        return bornes;
    }
    public void setBornes(int bornes) {
        this.bornes = bornes;
    }
    
    
}
