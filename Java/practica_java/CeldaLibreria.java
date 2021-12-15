/**
 * Javadoc
 * 
 * @author Ludovic Lesur
 * @since 01/11/2015
 */

package practica_java ;

public class CeldaLibreria {
	
	// Datos de la class
	Libreria libreria ;
	CeldaLibreria siguiente ;
	
	// Constructor
	CeldaLibreria (Libreria pLibreria, CeldaLibreria pSiguiente) {
		libreria = pLibreria ;
		siguiente = pSiguiente ;
	}
}
