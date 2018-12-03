package test;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;
public class TestAction extends ActionSupport {
    private static Connection con;
    String username;
    String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String execute()throws Exception {
            String sql = "SELECT *FROM userinfo where username='" + getUsername() + "'and password='" + getPassword() + "'";
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/userinfo";
            con = DriverManager.getConnection(url, "root", "1234");
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            if (rs.next()) {
                return SUCCESS;
            }
            return ERROR;
    }
}
