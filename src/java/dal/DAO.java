/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
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
public class DAO extends DBContext {
    

    public Account checkAcc(String email, String password) {
        String sql = "select * from Accounts where email = ? and password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, password);
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

    public void insert(Account a) {
        String sql = "INSERT INTO [dbo].[Accounts]\n"
                + "           ([email]\n"
                + "           ,[password]\n"
                + "           ,[Name])\n"
                + "     VALUES\n"
                + "           (?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getEmail());
            st.setString(2, a.getPassword());
            st.setString(3, a.getName());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Account checkEamil(String email) {
        String sql = "select * from Accounts where email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
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

    public void updatePass(String email, String pass) {
        String sql = "UPDATE [dbo].[Accounts]\n"
                + "   SET \n"
                + "      [password] = ?\n"
                + " WHERE email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, pass);
            st.setString(2, email);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insertO(Owner o) {
        String sql = "INSERT INTO [dbo].[owner]\n"
                + "           ([owner_name]\n"
                + "           ,[owner_email]\n"
                + "           ,[accId]\n"
                + "           ,[owner_number])\n"
                + "     VALUES\n"
                + "           (?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, o.getOwner_name());
            st.setString(2, o.getOwner_email());
            st.setInt(3, o.getAcount().getId());
            st.setInt(4, o.getOwner_number());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insertR(Renter r) {
        String sql = "INSERT INTO [dbo].[renter]\n"
                + "           ([renter_name]\n"
                + "           ,[renter_email]\n"
                + "           ,[accId]\n"
                + "           ,[renter_number])\n"
                + "             VALUES\n"
                + "             (?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, r.getRenter_name());
            st.setString(2, r.getRenter_email());
            st.setInt(3, r.getAccount().getId());
            st.setInt(4, r.getRenter_number());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insertM(Motel m) {
        String sql = "INSERT INTO [dbo].[motel]\n"
                + "           ([motel_name]\n"
                + "           ,[motel_address]\n"
                + "           ,[owner-id]\n"
                + "           ,[motel_describe]\n"
                + "           ,[motel_img])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, m.getMotel_name());
            st.setString(2, m.getMotel_address());
            st.setInt(3, m.getOwner_id());
            st.setString(4, m.getMotel_describe());
            st.setString(5, m.getMotel_img());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insertRoom(Room r) {
        String sql = "INSERT INTO [dbo].[room]\n"
                + "           ([room_number]\n"
                + "           ,[room_price]\n"
                + "           ,[room_describe]\n"
                + "           ,[motel_id]\n"
                + "           ,[renter_id]\n"
                + "           ,[quantity-max]\n"
                + "           ,[quantity-now])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, r.getRoom_number());
            st.setDouble(2, r.getRoom_price());
            st.setString(3, r.getRoom_describe());
            st.setInt(4, r.getMotel().getMotel_id());
            st.setInt(5, 0);
            st.setInt(6, r.getQuantity_max());
            st.setInt(7, r.getQuantity_now());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insertImg(imgRoom img) {
        String sql = "INSERT INTO [dbo].[img-room]\n"
                + "           ([room_id]\n"
                + "           ,[image_1]\n"
                + "           ,[image_2]\n"
                + "           ,[image_3]\n"
                + "           ,[image_4]\n"
                + "           ,[image_5])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, img.getRoom().getRoom_id());
            st.setString(2, img.getImg_1());
            st.setString(3, img.getImg_2());
            st.setString(4, img.getImg_3());
            st.setString(5, img.getImg_4());
            st.setString(6, img.getImg_5());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insertBill(Bill b) {
        String sql = "INSERT INTO [dbo].[renter-room]\n"
                + "           ([room_id]\n"
                + "           ,[renter_id]\n"
                + "           ,[status])\n"
                + "     VALUES\n"
                + "           (?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, b.getRoom().getRoom_id());
            st.setInt(2, b.getRenter().getRenter_id());
            st.setInt(3, b.getStatus());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateAcc(Account a) {
        String sql = "UPDATE [dbo].[Accounts]\n"
                + "   SET [role] = 2\n"
                + " WHERE accId = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, a.getId());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateRRR(int id) {
        String sql = "UPDATE [dbo].[renter-room]\n"
                + "   SET \n"
                + "      [status] = 1\n"
                + " WHERE renter_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteRRR(int id) {
        String sql = "DELETE FROM [dbo].[renter-room]\n"
                + "      WHERE renter_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteRenter(int id) {
        String sql = "DELETE FROM [dbo].[renter]\n"
                + "      WHERE renter_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateRenterIdRoom(int id, int roomId) {
        String sql = "UPDATE [dbo].[room]\n"
                + "   SET \n"
                + "      [renter_id] = ?\n"
                + "      \n"
                + " WHERE room_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.setInt(2, roomId);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateRoom(Room r) {
        String sql = "UPDATE [dbo].[room]\n"
                + "   SET [room_number] = ?\n"
                + "      ,[room_price] = ?\n"
                + "      ,[room_describe] = ? \n"
                + "      ,[quantity-max] = ?\n"
                + "      \n"
                + " WHERE room_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, r.getRoom_number());
            st.setDouble(2, r.getRoom_price());
            st.setString(3, r.getRoom_describe());
            st.setInt(4, r.getQuantity_max());
            st.setInt(5, r.getRoom_id());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteRoom(int id) {
        String sql = "DELETE FROM [dbo].[room]\n"
                + "      WHERE room_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteBill(int id) {
        String sql = "DELETE FROM [dbo].[renter-room]\n"
                + "      WHERE room_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteImg(int id) {
        String sql = "DELETE FROM [dbo].[img-room]\n"
                + "      WHERE room_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public static void main(String[] args) {
        DAO d = new DAO();
        d.deleteImg(17);
        d.deleteBill(17);
        d.deleteRoom(17);
        
    }
}
