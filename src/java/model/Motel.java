/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author MM
 */
public class Motel {
        private int motel_id;
        private String motel_name;
        private String motel_address;
        private int owner_id;
        private String motel_describe;
        private String motel_img;

    public Motel() {
    }

    public Motel(int motel_id, String motel_name, String motel_address, int owner_id, String motel_describe, String motel_img) {
        this.motel_id = motel_id;
        this.motel_name = motel_name;
        this.motel_address = motel_address;
        this.owner_id = owner_id;
        this.motel_describe = motel_describe;
        this.motel_img = motel_img;
    }

    public int getMotel_id() {
        return motel_id;
    }

    public void setMotel_id(int motel_id) {
        this.motel_id = motel_id;
    }

    public String getMotel_name() {
        return motel_name;
    }

    public void setMotel_name(String motel_name) {
        this.motel_name = motel_name;
    }

    public String getMotel_address() {
        return motel_address;
    }

    public void setMotel_address(String motel_address) {
        this.motel_address = motel_address;
    }

    public int getOwner_id() {
        return owner_id;
    }

    public void setOwner_id(int owner_id) {
        this.owner_id = owner_id;
    }

    public String getMotel_describe() {
        return motel_describe;
    }

    public void setMotel_describe(String motel_describe) {
        this.motel_describe = motel_describe;
    }

    public String getMotel_img() {
        return motel_img;
    }

    public void setMotel_img(String motel_img) {
        this.motel_img = motel_img;
    }

    
        
}
