/**
 * Javadoc
 * 
 * @author Ludovic Lesur
 * @since 07/11/2015
 */

package practica_java ;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class MenuLibreria {

	public void menu(Libreria libreria) throws IOException {
		
		libreria.espacio() ;
		System.out.println("Bienvenidos en la librería " + libreria.nombre + ".\n") ;
		
		InputStreamReader I = new InputStreamReader(System.in) ;
		BufferedReader R = new BufferedReader(I) ;
		MenuLibro menuLibro = new MenuLibro() ;
		// Carácter ingresado por teclado
		String ingresado = "a" ;
		
		while (ingresado.compareTo("v") != 0) {
			libreria.mostrarMenu() ;
			libreria.espacio() ;
			System.out.print("Función elegida: ") ;
			ingresado = R.readLine() ;
			System.out.print("\n") ;
			switch (ingresado) {
			case "c" :
				libreria.cambiarNombre(libreria) ;
				break ;
			case "l" :
				Libro newLibro = new Libro() ;
				libreria.anadirLibro(libreria, newLibro, 1) ;
				break ;
			case "m" :
				libreria.mostrar(libreria) ;
				break ;
			case "b" :
				Libreria resultadoBusqueda = new Libreria() ; 
				Libro libroEditado = new Libro() ;
				resultadoBusqueda = libreria.buscarLibro(libreria) ;
				if (resultadoBusqueda.vacia(resultadoBusqueda) == false) {
					// La busqueda tiene resutados, luego mostramos el menu siguiente
					String control = libreria.menuBusqueda() ;
					if (control.compareTo("m")==0) {
						libroEditado = resultadoBusqueda.accederLibro(resultadoBusqueda, 1) ;
						// Queremos modificar, mostramos el menu del libro
						menuLibro.menu(libreria, libroEditado) ;
					}
					else {
						if (control.compareTo("e")==0) {
							libroEditado = resultadoBusqueda.accederLibro(resultadoBusqueda, 0) ;
							// Queremos eliminar el libro
							libreria.eliminarLibro(libreria, libroEditado) ;
						}
					}
				}
				break ;
			case "o" :
				libreria.ordenar(libreria) ;
				break ;
			case "v" :
				break ;
			default :
				libreria.espacio() ;
				System.out.println("Control desconocido.\n") ;
			}
			// Cada vez que se ejecuta una se estas funciones, actualizamos el fichero de texto
			libreria.exportarLibreria(libreria) ;
		}
	}
}