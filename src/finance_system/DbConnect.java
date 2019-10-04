
package finance_system;
import java.sql.*;
import javax.swing.JOptionPane;
/**
 *
 * @author chriswatia
 */
public class DbConnect {
Connection con = null;
public Connection start() throws SQLException{
    try{
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school_finance","root","");
       }
    catch (ClassNotFoundException ex) {   
                JOptionPane.showMessageDialog(null,"Database connection failed!");
    }
    return con;
} 
}   
    

