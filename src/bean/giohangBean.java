package bean;

public class giohangBean {
	private String masach;
	private String tensach;
	private String tacgia;
	private Long gia;
	private Long soluong;
	private Long thanhtien;
		public giohangBean() {
			super();
		}
		
		public giohangBean(String masach, String tensach, String tacgia, Long gia, Long soluong) {
			super();
			this.masach = masach;
			this.tensach = tensach;
			this.tacgia = tacgia;
			this.gia = gia;
			this.soluong = soluong;
			this.thanhtien=soluong*gia;
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
		public Long getSoluong() {
			return soluong;
		}
		public void setSoluong(Long soluong) {
			this.soluong = soluong;
		}
		public Long getThanhtien() {
			return thanhtien;
		}
		public void setThanhtien(Long thanhtien) {
			this.thanhtien =soluong*gia;
		}
		
}
