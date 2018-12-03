package test;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.*;
public class register extends ActionSupport {
    private static Connection con;
    String username;
    String password;
    public String getUsername()
    {
        return username;
    }
    public void setUsername(String username)
    {
        this.username = username;
    }
    public String getPassword()
    {
        return password;
    }
    public void setPassword(String password)
    {
        this.password = password;
    }
    public String execute() throws  Exception{
            String sql = "insert into userinfo (username,password) values('"+username+"','"+password+"')";
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/userinfo";
            con = DriverManager.getConnection(url, "root", "1234");
            Statement stm = con.createStatement();
            int flag=stm.executeUpdate(sql);
           if (flag!=0)
                   return SUCCESS;
           else  return ERROR;
            }
}

