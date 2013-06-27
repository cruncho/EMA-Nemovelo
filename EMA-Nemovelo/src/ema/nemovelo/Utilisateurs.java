/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ema.nemovelo;

import java.math.BigInteger;

/**
 *
 * @author Clément
 */
public class Utilisateurs {
    
    // instance utilisateur defini par un nom,prenom,login,password,fonction,id,location,un booleen location_en_cours et une heure
    
        private static Utilisateurs instance = new Utilisateurs();
    
    public static Utilisateurs getInstance() {
        return instance;
    }
    
   String nom; 
   String prenom;
   String login; 
   String password;
   int fonction; 
   int id;
   int location;
   boolean location_en_cours;
   BigInteger heure;

    public Utilisateurs() {
        
    }

   // getters & setters
    
    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getFonction() {
        return fonction;
    }

    public void setFonction(int fonction) {
        this.fonction = fonction;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getLocation() {
        return location;
    }

    public void setLocation(int location) {
        this.location = location;
    }

    public boolean isLocation_en_cours() {
        return location_en_cours;
    }

    public void setLocation_en_cours(boolean location_en_cours) {
        this.location_en_cours = location_en_cours;
    }

    public BigInteger getHeure() {
        return heure;
    }

    public void setHeure(BigInteger heure) {
        this.heure = heure;
    }
    

}
