package model;

public class CartItemBean {

	private String strKd_produk;
    private String strNm_produk;
    private int dblHarga;
    private int iQty;
    private int dblTotalHarga;
     
    public String getKd_produk() {
        return strKd_produk;
    }
    public void setKd_produk(String strKd_produk) {
        this.strKd_produk = strKd_produk;
    }
    public String getNm_produk() {
        return strNm_produk;
    }
    public void setNm_produk(String strNm_produk) {
        this.strNm_produk = strNm_produk;
    }
    public double getHarga() {
        return dblHarga;
    }
    public void setHarga(int dblHarga) {
        this.dblHarga = dblHarga;
    }
    public int getQty() {
        return iQty;
    }
    public void setQuantity(int qty) {
        iQty = qty;
    }
    public double getTotalHarga() {
        return dblTotalHarga;
    }
    public void setTotalHarga(int dblTotalHarga) {
        this.dblTotalHarga =  dblTotalHarga;
    }
}
