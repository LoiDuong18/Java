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
	public void Xoa(String masach) {
		for(giohangBean gh: ds) {
			if(gh.getMasach().equals(masach)==true) {
				ds.remove(gh);
			}
		}
	}
	public void Sua( String masach, long soluong) {
		for(giohangBean gh1: ds) {
			if(gh1.getMasach().equals(masach)==true)
				gh1.setSoluong(gh1.getSoluong()+ soluong);
				gh1.setThanhtien(gh1.getSoluong());
		}
		
	}
	
	public int TimSach(String ma) {
		for(giohangBean gh: ds) {
			if(gh.getMasach().equals(ma)==true)
				return 0;
		}
		return 1;
	}
	
		
	public void Them(String masach, String tensach, String tacgia, long gia, long soluong) {
		giohangBean gh= new giohangBean(masach, tensach, tacgia, gia, soluong);
		if(TimSach(gh.getMasach())==1) {
			ds.add(gh);
		}
		else {
			for(giohangBean gh1: ds) {
				if(gh1.getMasach().equals(masach)==true)
					gh1.setSoluong(gh.getSoluong()+gh1.getSoluong());
					gh1.setThanhtien(gh1.getSoluong());
			}
		}
			
	}
}
