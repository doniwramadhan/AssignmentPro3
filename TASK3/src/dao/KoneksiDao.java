package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.ProdukMod;



public class KoneksiDao {
	private String jdbcURL = "jdbc:mysql://localhost:3306/myjavacode?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "root";
	private Connection conn;
    private Statement st;
    
    private static final String INSERT_SQL = "insert into produk (kd_produk,nm_produk,harga_produk,qty) values (?,?,?,?);";
    private static final String SELECT_PEEK_SQL ="select * from produk order by kd_produk asc ";
    public KoneksiDao() {
    
    }
    protected Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(jdbcURL,jdbcUsername,jdbcPassword);
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}

    public void insertTask(ProdukMod pm) throws Exception {
		try(Connection conn = getConnection();
				PreparedStatement pstm = conn.prepareStatement(INSERT_SQL)){
			pstm.setString(1, pm.getKd_produk());
			pstm.setString(2, pm.getNm_produk());
			pstm.setString(3, pm.getHarga_produk());
			pstm.setString(4, pm.getQty());
		
			pstm.executeUpdate();			
			System.out.println("data inserted");
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
    
    public List<ProdukMod> PeekProdukMod() throws SQLException{
		List<ProdukMod> pm = new ArrayList<>();
		try(Connection con = getConnection();
				PreparedStatement pstm = con.prepareStatement(SELECT_PEEK_SQL);){
			System.out.println(pstm);
			ResultSet rs = pstm.executeQuery();
			while(rs.next()) {
				int id_produk = rs.getInt("id_produk");
				String kd_produk = rs.getString("kd_produk");
				String nm_produk = rs.getString("nm_produk");
				String harga_produk = rs.getString("harga_produk");
				String qty = rs.getString("qty");
				pm.add(new ProdukMod(id_produk,kd_produk,nm_produk,harga_produk,qty));
				}	
			}catch(SQLException e) {
				e.printStackTrace();
			}
			return pm;
		}
    
    
    public void koneksi() {
        try {
            String db = "jdbc:mysql://localhost:3306/myjavacode";
            String user = "root";
            String pass = "root";
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(db, user, pass);
            st = conn.createStatement();
        } catch (Exception x) {

            System.out.println("Terjadi kesalahan koneksi : " + x);
        }
    }

    public void diskonek(ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
            st.close();
            conn.close();
        } catch (Exception x) {
            System.out.println("Terjadi kesalahan diskoneksi : " + x);
        }
    }

    public ResultSet ambilData(String sql) {
        ResultSet rs = null;
        try {
            koneksi();
            rs = st.executeQuery(sql);
        } catch (Exception x) {
            System.out.println("Terjadi kesalahan ambil data : " + x);
        }
        return rs;
    }
    
}

