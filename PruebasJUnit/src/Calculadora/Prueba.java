package Calculadora;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class Prueba {

	@Test
	final void testSuma() {
		Calculadora c = new Calculadora (20,10); 
		int resultado = c.suma ();  
		assertEquals (30, resultado);
	}

	@Test
	final void testResta() {
		Calculadora c = new Calculadora (10,5); 
		int resultado = c.resta ();  
		assertEquals (5, resultado);
	}

	@Test
	final void testMultiplica() {
		Calculadora c = new Calculadora (5,3); 
		int resultado = c.multiplica ();  
		assertEquals (15, resultado);
	}

	@Test
	final void testDivide() {
		Calculadora c = new Calculadora (6,2); 
		int resultado = c.divide ();  
		assertEquals (3, resultado);
	}
	
	@Test
	final void testEsMayor() {
		Calculadora c = new Calculadora (6,2); 
		boolean resultado = c.esMayor ();  
		assertTrue (resultado);
	}
	
	@Test
	final void testDivide2() {
		Calculadora c = new Calculadora (6,3); 
		int resultado = c.divide2 ();  
		assertNotNull (resultado);
	}

}
