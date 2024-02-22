package org.Java.Mapper;

import java.util.HashMap;

import org.Java.Service.MainService;
import org.Java.VO.Page;

public class ViewMapper {
	private HashMap<String, Page> mapper;
	public ViewMapper() {
		mapper = new HashMap<String, Page>();
		mapper.put("/Main.do",new MainService());
	}
	
	
	public Page getService(String key) {
		return mapper.get(key);
	}
}
