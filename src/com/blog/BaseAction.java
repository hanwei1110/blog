package com.blog;


import java.util.Map;

import javax.servlet.ServletContext;

import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.util.ServletContextAware;

public class BaseAction implements SessionAware,ServletContextAware{
	
	protected Map<String, Object> session;
	protected ServletContext servletContext;
	
	public void setSession(Map<String, Object> arg0) {
		session = arg0;
		
	}

	public void setServletContext(ServletContext arg0) {
		servletContext = arg0;
		
	}

}
