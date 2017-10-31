package databaseHelper;

import java.sql.*;
import java.util.ArrayList;

public class Names {
    private DBConnect database;
    private ResultSet result;

    public Names() {
        database = new DBConnect();
    }

    public ArrayList<String> getNames() throws SQLException{
        ArrayList<String> listToReturn = new ArrayList<String>();
        Statement stat = null;
        //I try get of names of tables
        DatabaseMetaData md = database.conn.getMetaData();
        ResultSet rs = md.getTables(null, null, null, new String[]{"TABLE"});
        while (rs.next()) {
            listToReturn.add(rs.getString("TABLE_NAME"));
        }
        return listToReturn;
    }
}
