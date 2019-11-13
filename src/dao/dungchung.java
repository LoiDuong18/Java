package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class dungchung {
	public Connection cn;
	  public void KetNoi() throws Exception{
		  //B1: Xac dinh HQTCSDL
		  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		  System.out.print("Da xac dinh hqtcsdl");
		  //Be: Ket noi vao csdl
		  String url="jdbc:sqlserver://LAB4-CNTT\\MISASME2017:1433;databaseName=qlsach;user=sa; password=123";
		  cn=DriverManager.getConnection(url);
		  System.out.print("Da ket noi");
	  }

}
