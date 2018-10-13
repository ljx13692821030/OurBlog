package com.blog.toolUtil;

import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;




public class DbUtil {
	public static final String DRIVER="com.mysql.jdbc.Driver";
	public static final String URL="jdbc:mysql://192.168.0.105:3306/blog?useUnicode=true&characterEncoding=utf-8";
	public static final String USERNAME="root";
	public static final String PASSWORD="123";
	private static Connection connection;
	private static PreparedStatement pstm;
	private static ResultSet rs;
	
	
	
	
	
	public static void main(String[] args){
		getConnection();
	}
	public static Connection getConnection(){
		try {
			Class.forName(DRIVER);
			connection = DriverManager.getConnection(URL,USERNAME,PASSWORD);
			if(connection!=null){
				System.out.println("连接数据库成功！");
			}else{
				System.out.println("连接数据库失败！");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return connection;
		
	}
	public static int executeUpdate(String sql,Object...obj){
		connection = DbUtil.getConnection();
		int num=0;
		try {
			pstm=connection.prepareStatement(sql);
		    for(int i=0;i<obj.length;i++){
		    	pstm.setObject(i+1, obj[i]);
		    }
		    num = pstm.executeUpdate();
		    
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return num;
		
 	}
	public static<T> List<T> getbeanClass(Class<T> classBean,String sql,Object...obj){
		T objectT = null;
		List<T> list = new ArrayList<>();
		connection = DbUtil.getConnection();
		try {
			pstm = connection.prepareStatement(sql);
			for(int i=0;i<obj.length;i++){
				pstm.setObject(i+1,obj[i]);
			}
			rs = pstm.executeQuery();
			ResultSetMetaData rsMetadata = rs.getMetaData();
			String conlumName = null;
			Object objValue = null;
			while(rs.next()){
				objectT = classBean.newInstance();
				for(int x = 0;x < rsMetadata.getColumnCount();x++){
					conlumName = rsMetadata.getColumnLabel(x+1);
					objValue = rs.getObject(x+1);
					BeanUtils.setProperty(objectT, conlumName, objValue);
				}
			}
			list.add(objectT);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	
	
	
	
	
	
	//关闭连接的通用的方法[rs,pstm,conn]
	public static void close(Connection cn,PreparedStatement pstm,ResultSet rs){
		try {
			if(rs!=null){
				rs.close();
			}
			if(pstm != null){
				pstm.close();
			}
			if(cn != null){
				cn.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
