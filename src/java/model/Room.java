/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author MM
 */
public class Room {
    private int room_id;
    private int room_number;
    private double room_price;
    private String room_describe;
    private Motel motel;
    private Renter renter;
    private int quantity_max;
    private int quantity_now;

    public Room() {
    }

    public Room(int room_id, int room_number, double room_price, String room_describe, Motel motel, Renter renter, int quantity_max, int quantity_now) {
        this.room_id = room_id;
        this.room_number = room_number;
        this.room_price = room_price;
        this.room_describe = room_describe;
        this.motel = motel;
        this.renter = renter;
        this.quantity_max = quantity_max;
        this.quantity_now = quantity_now;
    }

    public int getRoom_id() {
        return room_id;
    }

    public void setRoom_id(int room_id) {
        this.room_id = room_id;
    }

    public int getRoom_number() {
        return room_number;
    }

    public void setRoom_number(int room_number) {
        this.room_number = room_number;
    }

    public double getRoom_price() {
        return room_price;
    }

    public void setRoom_price(double room_price) {
        this.room_price = room_price;
    }

    public String getRoom_describe() {
        return room_describe;
    }

    public void setRoom_describe(String room_describe) {
        this.room_describe = room_describe;
    }

    public Motel getMotel() {
        return motel;
    }

    public void setMotel(Motel motel) {
        this.motel = motel;
    }

    public Renter getRenter() {
        return renter;
    }

    public void setRenter(Renter renter) {
        this.renter = renter;
    }

    public int getQuantity_max() {
        return quantity_max;
    }

    public void setQuantity_max(int quantity_max) {
        this.quantity_max = quantity_max;
    }

    public int getQuantity_now() {
        return quantity_now;
    }

    public void setQuantity_now(int quantity_now) {
        this.quantity_now = quantity_now;
    }

    
    
    
}
