/**
 * 
 */
/**
 * @author Boon
 *
 */
package bean;
import java.util.Date;
public class sachBean {
	private String masach;
	private String tensach;
	private String tacgia;
	private Long gia;
	private String anh;
	private Date ngaynhap;
	private String maloai;
	public sachBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public sachBean(String masach, String tensach, String tacgia, Long gia, String anh, Date ngaynhap, String maloai) {
		super();
		this.masach = masach;
		this.tensach = tensach;
		this.tacgia = tacgia;
		this.gia = gia;
		this.anh = anh;
		this.ngaynhap = ngaynhap;
		this.maloai = maloai;
	}

	public String getMasach() {
		return masach;
	}
	public void setMasach(String masach) {
		this.masach = masach;
	}
	public String getTensach() {
		return tensach;
	}
	public void setTensach(String tensach) {
		this.tensach = tensach;
	}
	public String getTacgia() {
		return tacgia;
	}
	public void setTacgia(String tacgia) {
		this.tacgia = tacgia;
	}
	public Long getGia() {
		return gia;
	}
	public void setGia(Long gia) {
		this.gia = gia;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public Date getNgaynhap() {
		return ngaynhap;
	}
	public void setNgaynhap(Date ngaynhap) {
		this.ngaynhap = ngaynhap;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	
}
