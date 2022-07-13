package scopedata;

import java.io.Serializable;

public class Account implements Serializable{
	private String type;
	private String id;
	private String name;
	public Account() {}
	public Account(String _type,String _id,String _name) {
		type = _type;
		id = _id;
		name = _name;
	}
	public String getType() {return type;}
	public String getId() {return id;}
	public String getName() {return name;}
}