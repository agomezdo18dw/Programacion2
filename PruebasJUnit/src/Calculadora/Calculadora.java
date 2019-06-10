package Calculadora;

public class Calculadora {
	
	private int num1;
	private int num2;
	
	public Calculadora (int a, int b) {
		num1=a;
		num2=b;
	}
	
	public int suma () {
		int res = num1 + num2;
		return res;
	}
	
	public int resta () {
		int res = num1 - num2;
		return res;
	}
	
	public int multiplica () {
		int res = num1 * num2;
		return res;
	}
	
	public int divide () {
		int res = num1 / num2;
		return res;
	}  
	
	public boolean esMayor () {
		boolean res = false;
		if (num1>=num2)
			res = true;
		return res;
	} 
	
	public int divide2 () {
		int res;
		if (num2 == 0)
			res = (Integer) null;
		else
			res = num1 / num2;
		return res;
	}
}
