package scopedata;

import java.io.Serializable;

public class Admin implements Serializable{
	private String id;
	private String pass;
	private String salt;
	private String name;
	public Admin() {}
	public Admin(String _id, String _pass, String _salt, String _name) {
		id = _id;
		pass = _pass;
		salt = _salt;
		name = _name;
	}
	public String getId() {return id;}
	public String getPass() {return pass;}
	public String getSalt() {return salt;}
	public String getName() {return name;}
}