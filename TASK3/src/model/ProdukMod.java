package model;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dao.KoneksiDao;

public class ProdukMod {

	int id_produk;
	String kd_produk,nm_produk,harga_produk,qty;
    KoneksiDao db = null;

    public ProdukMod() {
        db = new KoneksiDao();
        
    }
    
    public ProdukMod(String kd_produk, String nm_produk, String harga_produk, String qty) {
    	super();
    	this.kd_produk=kd_produk;
    	this.nm_produk=nm_produk;
    	this.harga_produk=harga_produk;
    	this.qty=qty;
	}
    
    public ProdukMod(int id_produk, String kd_produk, String nm_produk, String harga_produk, String qty) {
    	super();
    	this.id_produk=id_produk;
    	this.kd_produk=kd_produk;
    	this.nm_produk=nm_produk;
    	this.harga_produk=harga_produk;
    	this.qty=qty;
	}

	public int getId_produk() {
        return id_produk;
    }

    public void setId_produk(int id_produk) {
        this.id_produk = id_produk;
    }

    public String getKd_produk() {
        return kd_produk;
    }

    public void setKd_produk(String kd_produk) {
        this.kd_produk = kd_produk;
    }

    public String getNm_produk() {
        return nm_produk;
    }

    public void setNm_produk(String nm_produk) {
        this.nm_produk = nm_produk;
    }

    public String getHarga_produk() {
        return harga_produk;
    }

    public void setHarga_produk(String harga_produk) {
        this.harga_produk = harga_produk;
    }

    public String getQty() {
        return qty;
    }

    public void setQty(String qty) {
        this.qty = qty;
    }
    
    
    
    public List<ProdukMod> tampil() {
        List<ProdukMod> data = new ArrayList<ProdukMod>();
        ResultSet rs = null;
        try {
            String sql = "select * from produk order by kd_produk asc";
            rs = db.ambilData(sql);

            while (rs.next()) {
                ProdukMod pm = new ProdukMod();
                pm.setId_produk(rs.getInt("id_produk"));
                pm.setKd_produk(rs.getString("kd_produk"));
                pm.setNm_produk(rs.getString("nm_produk"));
                pm.setHarga_produk(rs.getString("harga_produk"));
                pm.setQty(rs.getString("qty"));
                data.add(pm);
            }
            db.diskonek(rs);
        } catch (Exception a) {
            System.out.println("Terjadi kesalahaan tampil produk, pada :\n" + a);
        }
        return data;
    }

	
}
