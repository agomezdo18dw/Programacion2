package Ejercicio4_4;

public class TablaEnteros {

    private int[] tabla;
    
    public TablaEnteros (int [] tabla) {
        this.tabla=tabla;
    }
    public boolean buscarElementoTabla (int n) {
        boolean encontrado=false;
        int i=0;
        while (!encontrado && i < tabla.length) {
            if (tabla[i] == n)
                encontrado=true;        
            i++;
        } 
        return encontrado;
    }
    public int posicionTabla (int n) {
        int pos=-1;
        for (int i = 0; i < tabla.length; i++) 
            if (tabla[i] == n)
                pos=i;
        if (pos!=-1) return pos;
        else return (Integer) null;
    }
}

