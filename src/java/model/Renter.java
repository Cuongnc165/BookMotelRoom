/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author MM
 */
public class Renter {
    private int renter_id;
    private String renter_name;
    private int renter_number;
    private String renter_email;
    private Account account;

    public Renter() {
    }

    public Renter(int renter_id, String renter_name, int renter_number, String renter_email, Account account) {
        this.renter_id = renter_id;
        this.renter_name = renter_name;
        this.renter_number = renter_number;
        this.renter_email = renter_email;
        this.account = account;
    }

    public int getRenter_id() {
        return renter_id;
    }

    public void setRenter_id(int renter_id) {
        this.renter_id = renter_id;
    }

    public String getRenter_name() {
        return renter_name;
    }

    public void setRenter_name(String renter_name) {
        this.renter_name = renter_name;
    }

    public int getRenter_number() {
        return renter_number;
    }

    public void setRenter_number(int renter_number) {
        this.renter_number = renter_number;
    }

    public String getRenter_email() {
        return renter_email;
    }

    public void setRenter_email(String renter_email) {
        this.renter_email = renter_email;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }
    
}
