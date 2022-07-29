package scopedata;

import java.io.Serializable;

public class Company implements Serializable{

	private int id;
	private String name;
	private int year_id;
	private int region_id;
	private int industry_id;
	private int salary_id;
	private String require;
	private String pdf;

	public Company() {}

	public Company(int _id, String _name,
			int _year_id, int _region_id,
			int _industry_id, int _salary_id, String _require, String _pdf) {
		id = _id;
		name = _name;
		year_id = _year_id;
		region_id = _region_id;
		industry_id = _industry_id;
		salary_id = _salary_id;
		require = _require;
		pdf = _pdf;
	}
	public int getId() {return id;}
	public String getName() {return name;}
	public int getYear_id() {return year_id;}
	public int getRegion_id() {return region_id;}
	public int getIndustry_id() {return industry_id;}
	public int getSalary_id() {return salary_id;}
	public String getRequire() {return require;}
	public String getPdf() {return pdf;}
}