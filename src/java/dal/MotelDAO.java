/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Bill;
import model.Motel;
import model.Owner;
import model.Renter;
import model.Room;
import model.imgRoom;

/**
 *
 * @author MM
 */
public class MotelDAO extends DBContext {

    public List<Motel> getAll() {
        List<Motel> list = new ArrayList<>();
        String sql = "select * from motel";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Motel c = new Motel(rs.getInt("motel_id"), rs.getString("motel_name"), rs.getString("motel_address"), rs.getInt("owner-id"), rs.getString("motel_describe"), rs.getString("motel_img"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Motel getMotelById(int id) {

        String sql = "select * from motel where motel_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Motel c = new Motel(rs.getInt("motel_id"), rs.getString("motel_name"), rs.getString("motel_address"), rs.getInt("owner-id"), rs.getString("motel_describe"), rs.getString("motel_img"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Motel getMotelByOwnerId(int id) {

        String sql = "select * from motel where [owner-id] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Motel c = new Motel(rs.getInt("motel_id"), rs.getString("motel_name"), rs.getString("motel_address"), rs.getInt("owner-id"), rs.getString("motel_describe"), rs.getString("motel_img"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Room getRoomById(int id) {

        String sql = "select * from room where room_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Room c = new Room(rs.getInt("room_id"), rs.getInt("room_number"), rs.getDouble("room_price"), rs.getString("room_describe"), getMotelById(rs.getInt("motel_id")), getRenterById(rs.getInt("renter_id")), rs.getInt("quantity-max"), rs.getInt("quantity-now"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Room getRoomByMoterlIdAndNum(int mid, int num) {

        String sql = "select * from room where motel_id = ? and room_number = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, mid);
            st.setInt(2, num);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Room c = new Room(rs.getInt("room_id"), rs.getInt("room_number"), rs.getDouble("room_price"), rs.getString("room_describe"), getMotelById(rs.getInt("motel_id")), getRenterById(rs.getInt("renter_id")), rs.getInt("quantity-max"), rs.getInt("quantity-now"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Room> getAllRoomByMotel(int id) {
        List<Room> list = new ArrayList<>();
        String sql = "select * from room where motel_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Room c = new Room(rs.getInt("room_id"), rs.getInt("room_number"), rs.getDouble("room_price"), rs.getString("room_describe"), getMotelById(rs.getInt("motel_id")), getRenterById(rs.getInt("renter_id")), rs.getInt("quantity-max"), rs.getInt("quantity-now"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public imgRoom getImgRoomById(int id) {

        String sql = "select * from [img-room] where room_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                imgRoom i = new imgRoom(getRoomById(rs.getInt("room_id")), rs.getString("image_1"), rs.getString("image_2"), rs.getString("image_3"), rs.getString("image_4"), rs.getString("image_5"));
                return i;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Renter getRenterById(int id) {

        String sql = "select * from renter where renter_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Renter r = new Renter(rs.getInt("renter_id"), rs.getString("renter_name"), rs.getInt("renter_number"), rs.getString("renter_email"), getAccountById(rs.getInt("accId")));
                return r;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Renter getRenterByAccId(int id) {

        String sql = "select * from renter where accId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Renter r = new Renter(rs.getInt("renter_id"), rs.getString("renter_name"), rs.getInt("renter_number"), rs.getString("renter_email"), getAccountById(rs.getInt("accId")));
                return r;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Renter getRenterByNewAccId(int id) {

        String sql = "SELECT TOP 1 *\n"
                + "FROM renter\n"
                + "WHERE accId = ? \n"
                + "ORDER BY renter_id DESC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Renter r = new Renter(rs.getInt("renter_id"), rs.getString("renter_name"), rs.getInt("renter_number"), rs.getString("renter_email"), getAccountById(rs.getInt("accId")));
                return r;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Owner getOwnerById(int id) {

        String sql = "select * from owner where accId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Owner o = new Owner(rs.getInt("owner-id"), rs.getString("owner_name"), rs.getString("owner_email"), getAccountById(rs.getInt("accId")), rs.getInt("owner_number"));
                return o;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Account getAccountById(int id) {

        String sql = "select * from Accounts where accId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Account a = new Account(rs.getInt("accId"), rs.getString("email"),
                        rs.getString("password"), rs.getString("Name"), rs.getInt("role"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Bill getBillByRoomId(int id) {

        String sql = "select * from [renter-room] where room_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Bill b = new Bill(getRoomById(rs.getInt("room_id")), getRenterById(rs.getInt("renter_id")), rs.getInt("bill_id"), rs.getInt("status"));
                return b;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Bill getBillByRenterId(int id) {

        String sql = "select * from [renter-room] where renter_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Bill b = new Bill(getRoomById(rs.getInt("room_id")), getRenterById(rs.getInt("renter_id")), rs.getInt("bill_id"), rs.getInt("status"));
                return b;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Room> search(String key,
            Double price1, Double price2, String address) {
        List<Room> list = new ArrayList();
        String sql = "select * from motel m join room r on m.motel_id = r.motel_id where 1=1";
        if (key != null && !key.equals("")) {
            sql += " and m.motel_name like '% " + key + "%'or r.room_describe like '%" + key + "%'";
        }
        if (price1 != null) {
            sql += " and r.room_price >=" + price1;
        }
        if (price2 != null) {
            sql += " and r.room_price <=" + price2;
        }
        if (address != null && !address.equals("")) {
            sql += " and m.motel_address like '% " + address + "%'";
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Room c = new Room(rs.getInt("room_id"), rs.getInt("room_number"), rs.getDouble("room_price"), rs.getString("room_describe"), getMotelById(rs.getInt("motel_id")), getRenterById(rs.getInt("renter_id")), rs.getInt("quantity-max"), rs.getInt("quantity-now"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }

    public static void main(String[] args) {
        MotelDAO d = new MotelDAO();
        Renter r = d.getRenterById(2);
        System.out.println(r.getRenter_id());

    }
}
