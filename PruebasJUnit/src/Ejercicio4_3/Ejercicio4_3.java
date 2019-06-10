package Ejercicio4_3;

public class Ejercicio4_3 {
	
	private int num1;
	private int num2;
	
	public Ejercicio4_3 (int a, int b) {
		num1=a;
		num2=b;
	}
	
	public boolean numeroMenor() {
		boolean res = false;
		if (num1<num2)
			res=true;
		return res;
	}
	
	public boolean numerosIguales() {
		boolean res = false;
		if (num1==num2)
			res=true;
		return res;
	}
	
	public Integer sinValor() {
		Integer res = null;
		if (num2 == 0)
			res=null;
		else
			res = num1 / num2;
		return res;
	}
	
	public double numElevado() {
		double res = 0;
		res = Math.pow(num1,num2);
		return res;
	}

}
