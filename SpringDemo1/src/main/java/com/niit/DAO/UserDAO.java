package com.niit.DAO;

public class UserDAO {
	 
	public static boolean Validate(String username, String password)
	{
		if (username.equals("maggi") && password.equals("1234"))
		{
			return true;
		}
		else
		{
			return false;
		}
	}

}
