import java.sql.*;


public class Forbindelse {

    public static void main(String[] args) { //psvm
        Forbindelse forbindelse = new Forbindelse();
        forbindelse.updateConnection("192.168.239.24","root","groot");

    }

    private Connection connection;
    private Statement stmt;
    private String url, userName, password;

    public void updateConnection(String newUrl, String newUsername,String newPassword) {

        url = "jdbc:mysql://"+newUrl+":3306/?user="+newUsername;
        userName = newUsername;
        password=newPassword;

        try {
            connection=DriverManager.getConnection(url,userName,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public Forbindelse() {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();  //indlæser driver-klasse
            url = "jdbc:mysql://127.0.0.1:3306/?user=root";
            userName = "root";
            password = "korianderforthewin";
            connection = DriverManager.getConnection(url, userName, password);
            stmt = connection.createStatement();

            if (connection != null) {
                System.out.println("forbindelse til databasen");
            }
        } catch (Exception e) {
            System.out.println("forbindelse undtagelse: " + e.getMessage());
            e.printStackTrace();
        }

    }
    public void searchUser(){






    }

    public void searchAppointment(){


    }
}
