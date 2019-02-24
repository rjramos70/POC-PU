package br.com.pu.repository;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import br.com.pu.model.Deal;


public class DbRepository {
	
	private static DbRepository instance;
	public Map<String, Deal> dealMap = new HashMap<String, Deal>();
	
	// private List<User> users = new ArrayList<User>();
	private int userIdCounter = 0;
	
	public DbRepository() {}
	
	static {
		try {
			instance = new DbRepository();
		} catch (Exception e) {
			throw new RuntimeException("Exception while creating a singleton instnace of DbRepository.");
		}
	}

	public static DbRepository getInstance() {
		return instance;
	}
	
}
