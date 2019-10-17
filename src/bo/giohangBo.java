package bo;

import java.util.ArrayList;

import bean.giohangBean;

public class giohangBo {
	public ArrayList<giohangBean> ds= new ArrayList<giohangBean>();
	public void Them (String masach, String tensach, String tacgia, Long gia, Long soluong) {
		
		giohangBean gh=new giohangBean(masach,tensach,tacgia,gia,soluong);
		ds.add(gh);
	}
	public Long Tong() {
//		Long s=(long) 0;
		long s=0;
		for(giohangBean g: ds)
			s+=g.getThanhtien();
		return s;
	}
}
