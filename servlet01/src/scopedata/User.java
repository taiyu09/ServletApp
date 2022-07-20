package scopedata;

import java.io.Serializable;

public class User implements Serializable{
	private String id;
	private String pass;
	private String salt;
	private String mail;
	private String name;
	public User() {}
	public User(String _id, String _pass, String _salt, String _mail, String _name) {
		id = _id;
		pass = _pass;
		salt = _salt;
		mail = _mail;
		name = _name;
	}
	public String getId() {return id;}
	public String getPass() {return pass;}
	public String getSalt() {return salt;}
	public String getMail() {return mail;}
	public String getName() {return name;}
}