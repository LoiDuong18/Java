/**
 * 
 */
/** * @author Boon
 *
 */
package dao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.sachBean;

public class sachDao {
	dungchung dc= new dungchung();
  public ArrayList<sachBean> getsach() throws Exception{
	  ArrayList<sachBean> ds= new ArrayList<sachBean>();
//	ds.add(new sachbean("s1", "csdl", "nhha", (long)65000, "b1.jpg"));
//	ds.add(new sachbean("s2", "csdl2", "nhha2", (long)66000, "b2.jpg"));
//	ds.add(new sachbean("s3", "csdl3", "nhha4", (long)67000, "b3.jpg"));
//	ds.add(new sachbean("s4", "csdl4", "nhha5", (long)68000, "b4.jpg"));
//	ds.add(new sachbean("s5", "csdl5", "nhha6", (long)69000, "b5.jpg"));
	  //b1: Ket noi vao csdl qlsach
	  dc.KetNoi();
	  //b2: Lay du lieu ve
	  String sql="select * from sach";
	  PreparedStatement cmd= dc.cn.prepareStatement(sql);
	  ResultSet rs= cmd.executeQuery();//Thuc hien cau lenh
	  while(rs.next()){ //duyet qua du lieu trong rs
		   String masach=rs.getString("masach");
		    String tensach=rs.getString("tensach");;
		    String tacgia=rs.getString("tacgia");;
		    long gia=rs.getLong("gia");
		    String anh=rs.getString("anh");;
		    Date ngaynhap=rs.getDate("ngaynhap");
		    String maloai=rs.getString("maloai");;
		    sachBean s= new sachBean(masach, tensach, tacgia, gia, anh, ngaynhap, maloai);
		    ds.add(s);
	  }
	  //Dong ket noi
	  rs.close();
	  dc.cn.close();
	  return ds;
  }
}
