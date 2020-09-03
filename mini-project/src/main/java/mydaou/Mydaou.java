package mydaou;



import java.io.InputStream;
import java.math.BigDecimal;
import java.sql.Array;
import java.sql.Connection;
import java.sql.Date;
//import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.Part;

import connection.Connect;
import mybean.MyBean;

public class Mydaou {

		// TODO Auto-generated method stub
		Connection con=Connect.dbcon();
		PreparedStatement ps=null;
		int result=0;
		ResultSet rs=null;
		
		/*retrieving data for login*/
		
		
		
				public ResultSet Userlogin1(MyBean m) throws SQLException {
			// TODO Auto-generated method stub
			String sql="select * from registration where username=? and pass=?";
			try {
				ps=con.prepareStatement(sql);
				ps.setString(1, m.getuserid());
				ps.setString(2, m.getpass());
				rs=ps.executeQuery();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
			con.close();
			return rs;

		}
				public ResultSet Userlogin2(MyBean m) throws SQLException {
					// TODO Auto-generated method stub
					String sql="select * from admin where userid=? and pass=?";
					try {
						ps=con.prepareStatement(sql);
						ps.setString(1, m.getuserid());
						ps.setString(2, m.getpass());
						rs=ps.executeQuery();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					con.close();
					return rs;

				}
						
			
				/*Inserting into registeration table*/
				
				
				public int insert(MyBean m) throws SQLException {
					// TODO Auto-generated method stub

						String sql="insert into registration (name,father_name,dob,course,program,branch,session,department,semester,religion,gender,mobile,email,aadhar,address,state,username,pass,cpi)"
								+ "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
						try {
							ps=con.prepareStatement(sql);
							ps.setString(1, m.getname());
							ps.setString(2, m.getfather_name());
							ps.setDate(3, (Date) m.getdob());
							ps.setString(4, m.getcourse());
							ps.setString(5, m.getprogram());
							ps.setString(6, m.getbranch());
							ps.setString(7, m.getsession());
							ps.setString(8, m.getdept());
							ps.setString(9, m.getsemester());
							ps.setString(10, m.getreligion());
							ps.setString(11, m.getgender());
							ps.setString(12, m.getmobile());
							ps.setString(13, m.getemail());
							ps.setString(14, m.getaadhar());
							ps.setString(15, m.getaddress());
							ps.setString(16, m.getstate());
							
							ps.setString(17, m.getusername());
							ps.setString(18, m.getpassword());
							//ps.setString(19, m.getimagefile());
							//ps.setString(20, m.getsavepath());
							ps.setString(19, m.getcpi());
							
							
							
							








							
							
							result=ps.executeUpdate();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					con.close();
						
						return result;
					}
				
				
				
/*Inserting into login table*/
				
				
				public int insert1(MyBean m) throws SQLException {
					// TODO Auto-generated method stub

						String sql="insert into login values (?,?,?)";
						try {
							ps=con.prepareStatement(sql);
							ps.setString(1, m.getusername());
							ps.setString(2, m.getpassword());
							ps.setString(3, m.getemail1());
							
							
							result=ps.executeUpdate();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						try {
							con.close();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					con.close();
						
						return result;
						
					}


				public int insert2(MyBean m) throws SQLException {
					// TODO Auto-generated method stub
					String sql="insert into faculty values (?,?,?,?,?,?,?)";
					try {
						ps=con.prepareStatement(sql);
						ps.setString(1, m.getid1());
						ps.setString(2, m.getfaculty_name());
						ps.setDate(3, (Date) m.getfaculty_dob());
						ps.setString(4, m.getfaculty_email());
						ps.setString(5, m.getfaculty_mobile());
						ps.setString(6, m.getpass());
						ps.setString(7, m.getpost());
						
						
						
						result=ps.executeUpdate();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					con.close();
					
					return result;
					
				}


				public int insert3(String studentlist,String studentemail,String studentlist1,String studentemail1,String studentlist2,String studentemail2,String faculty,String facultyemail) throws SQLException {
					// TODO Auto-generated method stub
					String sql="insert into student_team (first,firstmail,second,secondmail,third,thirdmail,faculty,facultymail) values (?,?,?,?,?,?,?,?)";
					try {
						ps=con.prepareStatement(sql);
						ps.setString(1, studentlist);
						ps.setString(2, studentemail);
						ps.setString(3, studentlist1);
						ps.setString(4, studentemail1);
						ps.setString(5, studentlist2);
						ps.setString(6, studentemail2);
						
						
						ps.setString(7, faculty);
						
						ps.setString(8, facultyemail);
						
						
						
						
						result=ps.executeUpdate();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					con.close();
					
					return result;
					
				}


				public int update(MyBean m) throws SQLException {
					// TODO Auto-generated method stub
					String sql="update registration set name=?,father_name=?,dob=?,course=?,program=?,branch=?,session=?,department=?,semester=?,religion=?,gender=?,mobile=?,email=?,aadhar=?,address=?,state=? where id=?";
					try {
						ps=con.prepareStatement(sql);
						ps.setString(1, m.getname());
						ps.setString(2, m.getfather_name());
						ps.setDate(3, (Date) m.getdob());
						ps.setString(4, m.getcourse());
						ps.setString(5, m.getprogram());
						ps.setString(6, m.getbranch());
						ps.setString(7, m.getsession());
						ps.setString(8, m.getdept());
						ps.setString(9, m.getsemester());
						ps.setString(10, m.getreligion());
						ps.setString(11, m.getgender());
						ps.setString(12, m.getmobile());
						ps.setString(13, m.getemail());
						ps.setString(14, m.getaadhar());
						ps.setString(15, m.getaddress());
						ps.setString(16, m.getstate());
						ps.setLong(17, Long.parseLong(m.getid()));
						
						
					
						
						
						








						
						
						result=ps.executeUpdate();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					con.close();
					
					return result;
				}
				public ResultSet Userlogin3(MyBean m) throws SQLException {
					// TODO Auto-generated method stub
					
					String sql="select * from faculty where id=? and pass=?";
					try {
						ps=con.prepareStatement(sql);
						ps.setString(1, m.getuserid());
						ps.setString(2, m.getpass());
						rs=ps.executeQuery();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					con.close();
					
					return rs;
				
				}
				public int insert4(Array list1) throws SQLException {
					// TODO Auto-generated method stub
					String sql="insert into panel (panel_team) values (?)";
					try {
						ps=con.prepareStatement(sql);
						ps.setArray(1, list1);
						
						
					
						
						
						
						
						result=ps.executeUpdate();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					con.close();
					
					return result;
				}
				public int insert5(MyBean m) {
					// TODO Auto-generated method stub
					String sql="insert into panel_team values (?,?)";
					try {
						ps=con.prepareStatement(sql);
						ps.setString(1, m.getteam());
						ps.setString(2, m.getpanels());
						
						
						
					
						
						
						
						
						result=ps.executeUpdate();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					try {
						con.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				
					return result;
				}
				
				
}