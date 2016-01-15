package com.demo.util;

import com.google.gson.Gson;

public class utilMethod {

	public <T> T fromJson(String str, Class<T> type) {  
        Gson gson = new Gson();  
        return gson.fromJson(str, type);  
    } 
}
