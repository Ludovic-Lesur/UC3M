/**
 * Javadoc
 * 
 * @author Ludovic Lesur
 * @since 07/11/2015
 */

package practica_java ;
import java.io.* ;

public class MenuLibro {
	
	public void menu(Libreria libreria, Libro libro) throws IOException {
		
		libro.espacioLibro() ;
		System.out.println("Edición del libro '" + libro.titulo + "'.\n") ;
		
		InputStreamReader I = new InputStreamReader(System.in) ;
		BufferedReader R = new BufferedReader(I) ;
		// Carácter ingresado por teclado
		String ingresado = "a" ;
		
		while (ingresado.compareTo("v") != 0) {
			libro.mostrarMenu() ;
			libro.espacioLibro() ;
			System.out.print("Función elegida: ") ;
			ingresado = R.readLine() ;
			System.out.print("\n") ;
			switch (ingresado) {
			case "a" :
				libro.cambiarApellido(libro) ;
				break ;
			case "n" :
				libro.cambiarNombre(libro) ;
				break ;
			case "t" :
				libro.cambiarTitulo(libro) ;
				break ;
			case "e" :
				libro.cambiarEditorial(libro) ;
				break ;
			case "i" :
				libro.cambiarISBN(libro) ;
				break ;
			case "p" :
				libro.cambiarEstado(libro) ;
				break ;
			case "v" :
				break ;
			default :
				libro.espacioLibro() ;
				System.out.println("Control desconocido.\n") ;
			}
			libreria.exportarLibreria(libreria) ;
		}
	}
}
