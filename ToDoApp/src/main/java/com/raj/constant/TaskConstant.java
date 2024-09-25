package com.raj.constant;

public class TaskConstant {
	public static final String ADDTASK = "insert into tasks(username,task,date,status) values(?,?,?,?)";
	public static final String UPDATETASK = "update tasks set task=?, date=?, status=? where username=? and id=?";
	public static final String UPDATESTATUS="update tasks set status=? where username=? and id=?";
	public static final String DELETETASK = "delete from tasks where username=? and id=?";
	public static final String VIEWTASK = "select * from tasks where username=? and id=?";
	public static final String SHOWTASKS = "select * from tasks where username=?";

}
