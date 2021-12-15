/**
 * Javadoc
 * 
 * @author Ludovic Lesur
 * @since 24/10/2015
 */

package practica_java ;

public class CeldaLibro {
	
	// Datos de la class
	Libro libro ;
	CeldaLibro siguiente ;
	
	// Constructor
	CeldaLibro (Libro pLibro, CeldaLibro pSiguiente) {
		libro = pLibro ;
		siguiente = pSiguiente ;
	}
}
