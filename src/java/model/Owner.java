/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author MM
 */
public class Owner {
    private int owner_id;
    private String owner_name;
    private String owner_email;
    private Account acount;
    private int owner_number;

    public Owner() {
    }

    public Owner(int owner_id, String owner_name, String owner_email, Account acount, int owner_number) {
        this.owner_id = owner_id;
        this.owner_name = owner_name;
        this.owner_email = owner_email;
        this.acount = acount;
        this.owner_number = owner_number;
    }

    public int getOwner_id() {
        return owner_id;
    }

    public void setOwner_id(int owner_id) {
        this.owner_id = owner_id;
    }

    public String getOwner_name() {
        return owner_name;
    }

    public void setOwner_name(String owner_name) {
        this.owner_name = owner_name;
    }

    public String getOwner_email() {
        return owner_email;
    }

    public void setOwner_email(String owner_email) {
        this.owner_email = owner_email;
    }

    public Account getAcount() {
        return acount;
    }

    public void setAcount(Account acount) {
        this.acount = acount;
    }

    public int getOwner_number() {
        return owner_number;
    }

    public void setOwner_number(int owner_number) {
        this.owner_number = owner_number;
    }
    
}
