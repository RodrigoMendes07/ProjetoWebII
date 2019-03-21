package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {

    public Connection getConexao() {

        String driver = "org.postgresql.Driver";
        String url = "jdbc:postgresql:5432/localhost/JavaWeb";
        String user = "postgres";
        String pass = "";

        Connection conn = null;

        try {
            Class.forName(driver);

            conn = DriverManager.getConnection(url, user, pass);

        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return conn;
    }
}
