package scopedata;

import java.io.Serializable;

public class CompanyJoin implements Serializable{
	private int id;
	private String name;
	private String year;
	private String region;
	private String industry;
	private String salary;
	private String require;
	public CompanyJoin() {}
	public CompanyJoin(int _id, String _name,
			String _year, String _region,
			String _industry, String _salary, String _require) {
		id = _id;
		name = _name;
		year = _year;
		region = _region;
		industry = _industry;
		salary = _salary;
		require = _require;
	}
	public int getId() {return id;}
	public String getName() {return name;}
	public String getYear() {return year;}
	public String getRegion() {return region;}
	public String getIndustry() {return industry;}
	public String getSalary() {return salary;}
	public String getRequire() {return require;}
}