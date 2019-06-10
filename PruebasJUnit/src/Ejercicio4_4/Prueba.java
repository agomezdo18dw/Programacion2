package Ejercicio4_4;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class Prueba {

	@Test
	final void testBuscarElementoTabla() {
		int[] tabla = {10,20,30,40};
		TablaEnteros t = new TablaEnteros (tabla);
		boolean resultado = t.buscarElementoTabla(10);
		assertEquals(true, resultado);
	}
	
	@Test
	final void testPosicionTabla() {
		int[] tabla = {10,20,30,40};
		TablaEnteros t = new TablaEnteros (tabla);
		int resultado = t.posicionTabla(30);
		assertEquals(2, resultado);
	}

}
