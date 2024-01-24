package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BagelDAO {
	private Connection conn;
	public BagelDAO() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://120.110.115.80:3306/Baking";
			conn =DriverManager.getConnection(url,"root","12345678");
		}catch(Exception e ){
			
		}
		// mysql 連線
		// 1. 載入drivier
		// 2. 建立connection
		
	}
	
	public BagelBean get(int id) {
		BagelBean bean = null;		
		/* 宣告一個 Statement 由conn的prepareStatement() 索回傳的物件
		 * 執行 prepareStatement的executeQuery() 回傳 ResultSet rs
		 * 利用 rs.first() 找到第一筆資料
		 * 取得資料後將之封裝到bean的物件
		 * 回傳bean 的結果
		 * */
		
		
		
		return bean;
	}
	
	
	
	public List getAll(){
		List <BagelBean> bagels = new ArrayList<BagelBean>();
		
		PreparedStatement ps = null;
		try {
			ps = conn
					.prepareStatement("select * from bagel");
			
			System.out.println(ps);
			ResultSet rs= ps.executeQuery();
//			rs.first();
			while(rs.next()) {
				int idx = rs.getInt("id");
				String name = rs.getString("name");
				int price = rs.getInt("price");
				String img = rs.getString("Img");
				String tag = rs.getString("tag"); 
				BagelBean bean = new BagelBean(idx, name, price, img, tag);
				bagels.add(bean);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return bagels;
	}
	
	public int insert(BagelBean bean) {
//		
//		 try {
//			   Class.forName("com.mysql.jdbc.Driver");
//			   String url="jdbc:mysql://120.110.115.80:3306/Baking";
//			   Connection conn=DriverManager.getConnection(url,"root","12345678");
//			   PreparedStatement ps=conn
//					   .prepareStatement("INSERT INTO `bagel`(`Id`, `Name`, `Price`, `Img`, `Tag`)"
//					   		+ " VALUES (?,?,?,?,?)");
//			            ps.setInt(1, 3);
//			            ps.setString(2,"全麥貝果" );
//			            ps.setInt(3,60 );
//			            ps.setString(4,"url:" );
//			            ps.setString(5,"1" );
//			           
//			            
//			            int  status =ps.executeUpdate();
//			            out.append(""+status);
//		 }catch(Exception e) {   
//			 out.append(e.toString());
//		 }
		return 0;
		
	}
	
	public static void main(String[] args) {
		BagelDAO dao = new BagelDAO();
		BagelBean bean =dao.get(3);  //呼叫dao的get方法，傳回給bean物件
		System.out.println(bean);
		List<BagelBean> beans = dao.getAll();
		System.out.println(beans);
		
	}

}
