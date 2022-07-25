package scopedata;

import java.io.Serializable;
import java.util.List;

public class Dropdown implements Serializable{
	private List<Year> ylist;
	private List<Region> rlist;
	private List<Industry> ilist;
	private List<Salary> slist;

	public Dropdown() {}
	public Dropdown(List<Year> _ylist, List<Region> _rlist, List<Industry> _ilist, List<Salary> _slist) {
		ylist = _ylist;
		rlist = _rlist;
		ilist = _ilist;
		slist = _slist;
	}
	public List<Year> getYears(){return ylist;}
	public List<Region> getRegions(){return rlist;}
	public List<Industry> getIndustrys(){return ilist;}
	public List<Salary> getSalarys(){return slist;}
}
