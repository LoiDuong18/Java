/**
 * 
 */
/** * @author Boon
 *
 */
package dao;
import java.util.ArrayList;

import bean.sachBean;

public class sachDao {
	public ArrayList<sachBean> getsach(){
		ArrayList<sachBean> ds = new ArrayList<sachBean>();
		ds.add(new sachBean("s1","csdl-1","dvloi",(long)100000, "b1.jpg"));
		ds.add(new sachBean("s2","csdl-2","dvloi",(long)100000, "b2.jpg"));
		ds.add(new sachBean("s3","csdl-3","dvloi",(long)100000, "b3.jpg"));
		ds.add(new sachBean("s4","csdl-4","dvloi",(long)100000, "b4.jpg"));
		ds.add(new sachBean("s5","csdl-5","dvloi",(long)100000, "b5.jpg"));
		return ds;
	}
}
