package demo;

public class Student {
	
	private String name;
	private int age;
	private int[]marks=new int[5];
	
	public int getAge() {
		return  this.age;
	}
	public String getName() {
		return this.name;
	}
	public void setName(String name) {
		this.name=name;
	}
	public void setAge(int age) {
		this.age=age;
	}
	public void setMarks(int[]marks) {
		this.marks=marks;
	}
	public int[] getMarks() {
		return this.marks;
	}


}
