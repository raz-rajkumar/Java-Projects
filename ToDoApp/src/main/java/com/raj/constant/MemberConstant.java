package com.raj.constant;

public class MemberConstant {
	public static final String ADDMEMBER="insert into members values(?,?,?,?,?,?)";
	public static final String UPDATEMEMBER="update members set mail=?, phno=? where username=?";
	public static final String DELETEMEMBER="delete from members where username=? and password=?";
	public static final String VIEWMEMBER="select * from members where username=? and password=?";
	public static final String VIEW="select * from members where username=?";
	
}
