/**
 * Javadoc
 * 
 * @author Ludovic Lesur
 * @since 07/11/2015
 */

package practica_java ;
import java.io.* ;

public class MenuAdministrador {

	public static void main(String[] args) throws IOException {
		
		System.out.println("Bienvenidos en el administrador de librería.\n") ;
		
		Administrador admin = new Administrador() ;
		MenuLibreria menuLibreria = new MenuLibreria() ;
		InputStreamReader I = new InputStreamReader(System.in) ;
		BufferedReader R = new BufferedReader(I) ;
		// Carácter ingresado por teclado
		String ingresado = "a" ;
		
		while (ingresado.compareTo("s") != 0) {
			admin.mostrarMenu() ;
			System.out.print("Función elegida: ") ;
			ingresado = R.readLine() ;
			System.out.print("\n") ;
			switch (ingresado) {
			case "c" :
				Libreria newLibreria = new Libreria() ;
				admin.anadirLibreria(admin, newLibreria, 1) ;
				break ;
			case "m" :
				admin.mostrarAdministrador(admin) ;
				System.out.print("\n") ;
				break ;
			case "b" :
				Administrador resultadoBusqueda = new Administrador() ; 
				Libreria libreriaEditada = new Libreria() ;
				resultadoBusqueda = admin.buscarLibreria(admin) ;
				if (resultadoBusqueda.vacio(resultadoBusqueda) == false) {
					// La busqueda tiene resutados, luego mostramos el menu siguiente
					String control = admin.menuBusqueda() ;
					if (control.compareTo("m")==0) {
						libreriaEditada = resultadoBusqueda.accederLibreria(resultadoBusqueda, 1) ;
						System.out.print("\n") ;
						// Queremos modificar, mostramos el menu de la librería
						menuLibreria.menu(libreriaEditada) ;
					}
					else {
						if (control.compareTo("e")==0) {
							libreriaEditada = resultadoBusqueda.accederLibreria(resultadoBusqueda, 0) ;
							// Queremos eliminar la librería
							admin.eliminarLibreria(admin, libreriaEditada) ;
						}
					}
				}
				break ;
			case "s" :
				System.out.println("Usted ha dejado el administrador.") ;
				break ;
			default :
				System.out.println("Control desconocido.\n") ;
			}
		}
		System.out.print("Fin del programa.") ;
	}
}