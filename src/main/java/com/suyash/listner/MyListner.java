package com.suyash.listner;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.suyash.entity.Todo;

public class MyListner implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		System.out.println("context created");
		List<Todo> list=new ArrayList();
		ServletContext context= sce.getServletContext();
		context.setAttribute("list", list);
	}
	
	

}
