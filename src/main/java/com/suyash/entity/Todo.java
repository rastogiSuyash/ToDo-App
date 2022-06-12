package com.suyash.entity;

import java.util.Date;

public class Todo {

	private String TodoTitle;
	private String TodoContent;
	private Date Tododate;
	public Todo(String todoTitle, String todoContent, Date tododate) {
		super();
		TodoTitle = todoTitle;
		TodoContent = todoContent;
		Tododate = tododate;
	}
	public String getTodoTitle() {
		return TodoTitle;
	}
	public void setTodoTitle(String todoTitle) {
		TodoTitle = todoTitle;
	}
	public String getTodoContent() {
		return TodoContent;
	}
	public void setTodoContent(String todoContent) {
		TodoContent = todoContent;
	}
	public Date getTododate() {
		return Tododate;
	}
	public void setTododate(Date tododate) {
		Tododate = tododate;
	}
	@Override
	public String toString() {
		return this.getTodoTitle()+":"+this.getTodoContent();
	}
	public Todo() {
		super();
		// TODO Auto-generated constructor stub
	}
}
