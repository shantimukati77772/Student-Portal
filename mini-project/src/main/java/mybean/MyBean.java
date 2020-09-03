package mybean;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.lang.reflect.Array;
import java.util.Date;



//import java.util.Date;

public class MyBean {
/*  For Login   */	
String userid;
	String pass;
	
	public String getuserid()
	{
		return userid;
	}
	
	public void setuserid(String userid)
	{
		this.userid=userid;
	}
	
	public String getpass()
	{
		return pass;
	}
	
	public void setpass(String pass)
	{
		this.pass=pass;
	}
	
	
/*======================================For Registration=============================================*/
	
	String name;
	String father_name;
	Date dob;
	String gender;
	String course;
	String branch;
	String email;
	String mobile;
	String address;
	String state;
	String pincode;
	String city;
	public String getname()
	{
		return name;
	}
	
	public void setname(String name)
	{
		this.name=name;
	}
	
	
	public String getcity()
	{
		return city;
	}
	
	public void setcity(String city)
	{
		this.city=city;
	}
	
	public String getfather_name()
	{
		return father_name;
	}
	
	public void setfather_name(String father_name)
	{
		this.father_name=father_name;
	}
	
	public Date getdob()
	{
		return dob;
	}
	
	public void setdob(Date dob)
	{
		this.dob=dob;
	}
	
	public String getgender()
	{
		return gender;
	}
	
	public void setgender(String gender)
	{
		this.gender=gender;
	}
	
	public String getprogram()
	{
		return program;
	}
	
	public void setprogram(String program)
	{
		this.program=program;
	}

	public String getemail()
	{
		return email;
	}
	
	public void setemail(String email)
	{
		this.email=email;
	}
	
	public String getaddress()
	{
		return address;
	}
	
	public void setaddress(String address)
	{
		this.address=address;
	}
	public String getstate()
	{
		return state;
	}
	
	public void setstate(String state)
	{
		this.state=state;
	}
	public String getpincode()
	{
		return pincode;
	}
	
	public void setpincode(String pincode)
	{
		this.pincode=pincode;
	}
	
	public String getmobile()
	{
		return mobile;
	}
	
	public void setmobile(String mobile)
	{
		this.mobile=mobile;
	}
	
	/*====================*/
	String religion;
	String program;
	String session;
	String dept;
	String semester;
	String aadhar;
	public String getcourse()
	{
		return course;
	}
	
	public void setcourse(String course)
	{
		this.course=course;
	}
	
	public String getreligion()
	{
		return religion;
	}
	
	public void setreligion(String religion)
	{
		this.religion=religion;
	}
	
	public String getsession()
	{
		return session;
	}
	
	public void setsession(String session)
	{
		this.session=session;
	}
	
	public String getdept()
	{
		return dept;
	}
	
	public void setdept(String dept)
	{
		this.dept=dept;
	}
	public String getsemester()
	{
		return semester;
	}
	
	public void setsemester(String semester)
	{
		this.semester=semester;
	}
	
	public String getaadhar()
	{
		return aadhar;
	}
	
	public void setaadhar(String aadhar)
	{
		this.aadhar=aadhar;
	}
	
	String imagefile;
	String savepath;
	
	public String getimagefile()
	{
		return imagefile;
	}
	
	public void setimagefile(String imagefile)
	{
		this.imagefile=imagefile;
	}
	
	public String getsavepath()
	{
		return savepath;
	}
	
	public void setsavepath(String savepath)
	{
		this.savepath=savepath;
	}
	
	/*For user credentials*/
	
	String username;
	String password;
	String email1;
	
	public String getusername()
	{
		return username;
	}
	
	public void setusername(String username)
	{
		this.username=username;
	}
	
	public String getpassword()
	{
		return password;
	}
	
	public void setpassword(String password)
	{
		this.password=password;
	}
	

	
	public String getemail1()
	{
		return email1;
	}
	
	public void setemail1(String email1)
	{
		this.email1=email1;
	}
	
	public String getbranch()
	{
		return branch;
	}
	
	public void setbranch(String branch)
	{
		this.branch=branch;
	}
	/*Faculty*/
	String faculty_name;
	String id1;
	Date faculty_dob;
	String faculty_email;
	String faculty_mobile;
	
	
	public String getfaculty_name()
	{
		return faculty_name;
	}
	
	public void setfaculty_name(String faculty_name)
	{
		this.faculty_name=faculty_name;
	}
	
	public String getid1()
	{
		return id1;
	}
	
	public void setid1(String id1)
	{
		this.id1=id1;
	}
	
	public Date getfaculty_dob()
	{
		return faculty_dob;
	}
	
	public void setfaculty_dob(Date faculty_dob)
	{
		this.faculty_dob=faculty_dob;
	}
	
	public String getfaculty_email()
	{
		return faculty_email;
	}
	
	public void setfaculty_email(String faculty_email)
	{
		this.faculty_email=faculty_email;
	}
	
	public String getfaculty_mobile()
	{
		return faculty_mobile;
	}
	
	public void setfaculty_mobile(String faculty_mobile)
	{
		this.faculty_mobile=faculty_mobile;
	}
	
	
	/*==============================================================*/
public String[] student_lists;
	public void setstudent_lists(String[] student_lists) {
		// TODO Auto-generated method stub
	
			this.student_lists = student_lists;
			  
	}
		public  String[] getstudent_lists()
		{
			return student_lists;
		}

		public String[] student_email;
		public void setstudent_email(String[] student_email) {
			// TODO Auto-generated method stub
		
				this.student_email = student_email;
				  
		}
			public  String[] getstudent_email()
			{
				return student_email;
			}
			
			
			
			
			
			
			public String[] student_listss;	
			public void setstudent_listss(String[] student_listss) {
				// TODO Auto-generated method stub
			
					this.student_listss = student_listss;
					  
			}
				public  String[] getstudent_listss()
				{
					return student_listss;
				}

				public String[] student_emails;
				public void setstudent_emails(String[] student_emails) {
					// TODO Auto-generated method stub
				
						this.student_emails = student_emails;
						  
				}
					public  String[] getstudent_emails()
					{
						return student_emails;
					}	
					
					
					
					public String[] student_listst;	
					public void setstudent_listst(String[] student_listst) {
						// TODO Auto-generated method stub
					
							this.student_listst = student_listst;
							  
					}
						public  String[] getstudent_listst()
						{
							return student_listst;
						}

						public String[] student_emailt;
						public void setstudent_emailt(String[] student_emailt) {
							// TODO Auto-generated method stub
						
								this.student_emailt = student_emailt;
								  
						}
							public  String[] getstudent_emailt()
							{
								return student_emailt;
							}
/*==================================================*/
			String id;
			String cpi;
			public void setid(String id) {
				// TODO Auto-generated method stub
				this.id = id;
			}

			public String getid() {
				// TODO Auto-generated method stub
				return id;
			}

			public void setcpi(String cpi) {
				// TODO Auto-generated method stub
				this.cpi = cpi;
			}

			public String getcpi() {
				// TODO Auto-generated method stub
				return cpi;
			}
			
			String post;
			public void setpost(String post) {
				// TODO Auto-generated method stub
				this.post = post;
				
			}
			public String getpost() {
				// TODO Auto-generated method stub
				return post;
			}
			
			String[] list;
			
			public void setlist(String[] list) {
				// TODO Auto-generated method stub
				this.list = list;
				
			}
			public String[] getlist() {
				// TODO Auto-generated method stub
				return list;
			}
String panel;
String team;
			public void setpanels(String panel) {
				// TODO Auto-generated method stub
				this.panel = panel;
			}

			public String getpanels() {
				// TODO Auto-generated method stub
				return panel;
			}

			public void setteam(String team) {
				// TODO Auto-generated method stub
				this.team = team;
			}

			public String getteam() {
				// TODO Auto-generated method stub
				return team;
			}

}


	
	
