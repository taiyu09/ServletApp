package dao;

import java.util.List;

import scopedata.Dropdown;
import scopedata.Industry;
import scopedata.Region;
import scopedata.Salary;
import scopedata.Year;

public class DropdownMaker {
	public Dropdown getDropdown() {
		YearDAO ydao = new YearDAO();
		RegionDAO rdao = new RegionDAO();
		IndustryDAO idao = new IndustryDAO();
		SalaryDAO sdao = new SalaryDAO();
		List<Year> ylist = ydao.selectAll();
		List<Region> rlist = rdao.selectAll();
		List<Industry> ilist = idao.selectAll();
		List<Salary> slist = sdao.selectAll();
		Dropdown dropdown = new Dropdown(ylist,rlist,ilist,slist);
		return dropdown;
	}
}
