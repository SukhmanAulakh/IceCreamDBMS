package cps510.project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

public class JDBCOracleConnection {
    Connection conn1;
    
    //Constructor
    public JDBCOracleConnection(){
        
    }
    
    public ArrayList getQuery(String queryStr, String[] columns){
        Connection conn1 = null;
        ArrayList<String> list = new ArrayList<String>();
         
        System.out.println("ATTEMPTING CONNECTION!");
        try {
         //   String dbURL1 = "jdbc:oracle:thin:username/password@oracle.scs.ryerson.ca:1521:orcl";  // that is school Oracle database and you can only use it in the labs CAN WORK WITH VPN CONNECTION
            String dbURL1 = "jdbc:oracle:thin:s2aulakh/09211279@oracle.scs.ryerson.ca:1521:orcl";
            conn1 = DriverManager.getConnection(dbURL1);
            
            if (conn1 != null) {
                System.out.println("Connected with connection #1");
            }
            
                try (Statement stmt = conn1.createStatement()) {

                    ResultSet rs = stmt.executeQuery(queryStr);

                    //QUERY
                    while (rs.next()) {
                        String resultStr="";
                        for(int i=0;i<columns.length;i++){
                            if(i<columns.length-1){
                                resultStr+=rs.getString(columns[i])+",";
                            }
                            else
                            {
                                resultStr+=rs.getString(columns[i]);
                            }
                        }
                        System.out.println("Success:"+resultStr);
                        list.add(resultStr);
                    }
                } catch (SQLException e) {
                    System.out.println("error:"+e.getErrorCode());
                }      
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (conn1 != null && !conn1.isClosed()) {
                    conn1.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        System.out.println("Finish Query...");
        if(list.isEmpty()){
            list.add("No Results Matching Query!");
        }
        return list;
    }
    
    public Boolean dropTable(String tableName){
        Boolean status = false;
        Connection conn1 = null;
        String dropStr = "DROP TABLE "+tableName.toUpperCase()+ " CASCADE CONSTRAINTS";
        System.out.println(dropStr);
         
        System.out.println("ATTEMPTING CONNECTION!");
        try {
         //   String dbURL1 = "jdbc:oracle:thin:username/password@oracle.scs.ryerson.ca:1521:orcl";  // that is school Oracle database and you can only use it in the labs CAN WORK WITH VPN CONNECTION
            String dbURL1 = "jdbc:oracle:thin:s2aulakh/09211279@oracle.scs.ryerson.ca:1521:orcl";
            conn1 = DriverManager.getConnection(dbURL1);
            
            if (conn1 != null) {
                System.out.println("Connected with connection #1");
            }
            
                try (Statement stmt = conn1.createStatement()) {

                    stmt.executeUpdate(dropStr);
                    status=true;
                    System.out.println("Table dropped successfully");
                } catch (SQLException e) {
                    status=false;
                    System.out.println("error:"+e.getErrorCode());
                }      
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (conn1 != null && !conn1.isClosed()) {
                    conn1.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return status;
    }
    
    public Boolean createTable(String tableName,String data){
        Boolean status = false;
        Connection conn1 = null;
        String createStr = "CREATE TABLE "+tableName.toUpperCase()+" ("+data+")";
         
        System.out.println("ATTEMPTING CONNECTION!");
        try {
         //   String dbURL1 = "jdbc:oracle:thin:username/password@oracle.scs.ryerson.ca:1521:orcl";  // that is school Oracle database and you can only use it in the labs CAN WORK WITH VPN CONNECTION
            String dbURL1 = "jdbc:oracle:thin:s2aulakh/09211279@oracle.scs.ryerson.ca:1521:orcl";
            conn1 = DriverManager.getConnection(dbURL1);
            
            if (conn1 != null) {
                System.out.println("Connected with connection #1");
            }
            
                try (Statement stmt = conn1.createStatement()) {

                    stmt.executeUpdate(createStr);
                    status=true;
                    System.out.println("Table created successfully");
                } catch (SQLException e) {
                    status=false;
                    System.out.println("error:"+e.getErrorCode());
                }      
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (conn1 != null && !conn1.isClosed()) {
                    conn1.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return status;
    }
}