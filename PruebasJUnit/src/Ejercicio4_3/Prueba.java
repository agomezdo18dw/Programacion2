package Ejercicio4_3;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import Calculadora.Calculadora;

class Prueba {

	@Test
	final void testNumeroMenor() {
		Ejercicio4_3 e = new Ejercicio4_3 (3,10); 
		boolean resultado = e.numeroMenor ();  
		assertTrue (resultado);
	}
	
	@Test
	final void testNumerosIguales() {
		Ejercicio4_3 e = new Ejercicio4_3 (3,10); 
		boolean resultado = e.numerosIguales ();  
		assertFalse (resultado);
	}
	
	@Test
	final void testSinValor() {
		Ejercicio4_3 e = new Ejercicio4_3 (4,0); 
		Integer resultado = e.sinValor ();  
		assertNull (resultado);
	}
	
	@Test
	final void testSinValor2() {
		Ejercicio4_3 e = new Ejercicio4_3 (4,2); 
		Integer resultado = e.sinValor ();  
		assertNotNull (resultado);
	}
	
	@Test
	final void testNumElevado() {
		Ejercicio4_3 e = new Ejercicio4_3 (2,2); 
		double resultado = e.numElevado ();  
		assertEquals (4,resultado);
	}

}
