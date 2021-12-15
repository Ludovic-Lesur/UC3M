/**
 * Javadoc
 * 
 * @author Ludovic Lesur
 * @since 24/10/2015
 */

package practica_java ;
import java.io.* ;

public class Libro {
	
	// Datos de la class
	Persona autor ;
	String titulo ;
	String editorial ;
	int ISBN ;
	boolean prestado ;
	Persona prestadoA ;
	
	// Constructor
	Libro () {
		Persona newAutor = new Persona() ;
		Persona newCliente = new Persona() ;
		autor = newAutor ;
		titulo = "" ;
		editorial = "" ;
		ISBN = 0 ;
		prestado = false ;
		prestadoA = newCliente ;
	}
	
	// Para creer un espacio antes de los mensajes
	public void espacioLibreria() {
		System.out.print("          ") ;
	}
	public void espacioLibro() {
		System.out.print("                    ") ;
	}
	
	// Mostrar el menu de las funciónes del libro
	public void mostrarMenu() {
		espacioLibro() ;
		System.out.println("Menu del libro:") ;
		espacioLibro() ;
		System.out.println("a = cambiar apellido del autor") ;
		espacioLibro() ;
		System.out.println("n = cambiar nombre del autor") ;
		espacioLibro() ;
		System.out.println("t = cambiar titulo") ;
		espacioLibro() ;
		System.out.println("e = cambiar editorial") ;
		espacioLibro() ;
		System.out.println("i = cambiar ISBN") ;
		espacioLibro() ;
		System.out.println("p = modificar el estado (prestado o libre)") ;
		espacioLibro() ;
		System.out.println("v = volver a la librería\n") ;
	}
	
	// Formato de un apellido
	public String formatoApellido(String apellido) {
		// Ponemos toda la cadena en mayuscula
		return apellido.toUpperCase() ;
	}
	
	// Formato de un nombre
	public String formatoNombre (String nombre) {
		// Ponemos una mayúscula en el primer carácter
		String principio = nombre.substring(0,1) ;
		principio = principio.toUpperCase() ;
		// Y el resto de la cadena en minúscula
		String resto = nombre.substring(1,nombre.length()) ;
		resto = resto.toLowerCase() ;
		return principio+resto ;
	}
	
	// Para saber si una cadena de caracter se compone de numúros
	public boolean isNumeric (String cadena) {
		try {
			Integer.parseInt(cadena) ;
		}
		catch(NumberFormatException ex) {
			// Si esta interrupción aparece, quiere decir que la cadena no se compone de números
			return false ;
		}
		return true ;
	}
	
	// Ingresar un nuevo libro con teclado
	public Libro crearLibro() throws IOException {
		InputStreamReader I = new InputStreamReader(System.in) ;
		BufferedReader R = new BufferedReader(I) ;
		// Apellido del autor
		espacioLibreria() ;
		System.out.print("Apellido del autor: ") ;
		String newApellido = R.readLine() ;
		// Nombre del autor
		espacioLibreria() ;
		System.out.print("Nombre del autor: ") ;
		String newNombre = R.readLine() ;
		Persona newAutor = new Persona() ;
		newAutor.apellido = formatoApellido(newApellido) ;
		newAutor.nombre = formatoNombre(newNombre) ;
		// Titulo
		espacioLibreria() ;
		System.out.print("Titulo del libro: ") ;
		String newTitulo = R.readLine() ;
		// Editorial
		espacioLibreria() ;
		System.out.print("Editorial del libro: ") ;
		String newEditorial = R.readLine() ;
		// ISBN
		String newISBN = "" ;
		int newISBNNum = 0 ;
		// Indica si tenemos que mostrar el mensaje de error
		boolean mensajeString = false ;
		// El bucle verifica que el control ingresado es un número
		while (isNumeric(newISBN) == false) {
			if (mensajeString == true) {
				espacioLibreria() ;
				System.out.println("Error: el ISBN debe ser un número.") ;
			}
			if (mensajeString == false) {
				mensajeString = true ;
			}
			espacioLibreria() ;
			System.out.print("Ingresar el ISBN del libro: ") ;
			newISBN = R.readLine() ;
		}
		// El control ingresado es un número, así que podemos convertirlo en un entero
		newISBNNum = Integer.parseInt(newISBN) ;
		// Creación del nuevo libro con las informaciónes ingresadas
		Libro newLibro = new Libro() ;
		newLibro.titulo = newTitulo ;
		newLibro.autor = newAutor ;
		newLibro.editorial = newEditorial ;
		newLibro.ISBN = newISBNNum ;
		return newLibro ;
	}
	
	// Mostrar un libro
	public void mostrarLibro(Libro libro) {
		String apellidoAutor = libro.autor.apellido ;
		String nombreAutor = libro.autor.nombre ;
		String titulo = libro.titulo ;
		String editorial = libro.editorial ;
		int ISBN = libro.ISBN ;
		System.out.println(apellidoAutor + " " + nombreAutor + ", " + titulo + ". Ed: " + editorial + ". ISBN: " + ISBN) ;
	}
	
	// Cambiar el estado (prestado o libre) del libro
	public void cambiarEstado(Libro libro) throws IOException {
		InputStreamReader I = new InputStreamReader(System.in) ;
		BufferedReader R = new BufferedReader(I) ;
		espacioLibro() ;
		System.out.print("Estado: ") ;
		String respuesta = "a" ;
		boolean mensaje = false ;
		if (libro.prestado == true) {
			System.out.println("prestado a " + libro.prestadoA.nombre + " " + libro.prestadoA.apellido + ".") ;
			// Devuelto del libro
			while (respuesta.compareTo("s") != 0 && respuesta.compareTo("n") != 0) {
				if (mensaje == true) {
					espacioLibro() ;
					System.out.println("Error: tiene que ingresar 's' o 'n'.") ;
				}
				if (mensaje == false) {
					mensaje = true ;
				}
				espacioLibro() ;
				System.out.print("¿Desea devolverlo (s/n)? : ") ;
				respuesta = R.readLine() ;
			}
			if (respuesta.compareTo("s") == 0) {
				libro.prestado = false ;
				Persona clienteVacio = new Persona() ;
				libro.prestadoA = clienteVacio ;
				espacioLibro() ;
				System.out.println("El libro ha sido devuelto, ahora está libre.") ;
			}
		}
		else {
			System.out.println("libre.") ;
			// Préstamo del libro
			while (respuesta.compareTo("s") != 0 && respuesta.compareTo("n") != 0) {
				if (mensaje == true) {
					espacioLibro() ;
					System.out.print("Error: tiene que ingresar 's' o 'n'.") ;
				}
				if (mensaje == false) {
					mensaje = true ;
				}
				espacioLibro() ;
				System.out.print("¿Desea prestarlo (s/n)? : ") ;
				respuesta = R.readLine() ;
			}
			if (respuesta.compareTo("s") == 0) {
				libro.prestado = true ;
				Persona cliente = new Persona() ;
				espacioLibro() ;
				System.out.print("Apellido del cliente: ") ;
				String apellidoCliente = R.readLine() ;
				cliente.apellido = formatoApellido(apellidoCliente) ;
				espacioLibro() ;
				System.out.print("Nombre del cliente: ") ;
				String nombreCliente = R.readLine() ;
				cliente.nombre = formatoNombre(nombreCliente) ;
				libro.prestadoA = cliente ;
				espacioLibro() ;
				System.out.println("El libro ahora está prestado a " + libro.prestadoA.nombre + " " + libro.prestadoA.apellido + ".") ;
			}
		}
		System.out.print("\n") ;
	}
	
	// Cambiar el apellido del autor
	public void cambiarApellido(Libro libro) throws IOException {
		espacioLibro() ;
		System.out.print("Ingresar el nuevo apellido del autor: ") ;
		InputStreamReader I = new InputStreamReader(System.in) ;
		BufferedReader R = new BufferedReader(I) ;
		String newApellido = R.readLine() ;
		libro.autor.apellido = formatoApellido(newApellido) ;
		espacioLibro() ;
		System.out.println("El apellido del autor ha cambiado.\n") ;
	}
	
	// Cambiar el nombre del autor
	public void cambiarNombre(Libro libro) throws IOException {
		espacioLibro() ;
		System.out.print("Ingresar el nuevo nombre del autor: ") ;
		InputStreamReader I = new InputStreamReader(System.in) ;
		BufferedReader R = new BufferedReader(I) ;
		String newNombre = R.readLine() ;
		libro.autor.nombre = formatoNombre(newNombre) ;
		espacioLibro() ;
		System.out.println("El nombre del autor ha cambiado.\n") ;
	}
	
	// Cambiar el titulo
	public void cambiarTitulo(Libro libro) throws IOException {
		espacioLibro() ;
		System.out.print("Ingresar el nuevo titulo: ") ;
		InputStreamReader I = new InputStreamReader(System.in) ;
		BufferedReader R = new BufferedReader(I) ;
		String newTitulo = R.readLine() ;
		libro.titulo = newTitulo ;
		espacioLibro() ;
		System.out.println("El titulo ha cambiado.\n") ;
	}
	
	// Cambiar el editorial
	public void cambiarEditorial(Libro libro) throws IOException {
		espacioLibro() ;
		System.out.print("Ingresar el nuevo editorial: ") ;
		InputStreamReader I = new InputStreamReader(System.in) ;
		BufferedReader R = new BufferedReader(I) ;
		String newEditorial = R.readLine() ;
		libro.editorial = newEditorial ;
		espacioLibro() ;
		System.out.println("El apellido del autor ha cambiado.\n") ;
	}
	
	// Cambiar ISBN
	public void cambiarISBN(Libro libro) throws IOException {
		InputStreamReader I = new InputStreamReader(System.in) ;
		BufferedReader R = new BufferedReader(I) ;
		String newISBN = "" ;
		int newISBNNum = 0 ;
		// Indica si tenemos que mostrar el mensaje de error
		boolean mensajeString = false ;
		// El bucle verifica que el control ingresado es un número
		while (isNumeric(newISBN) == false) {
			if (mensajeString == true) {
				espacioLibro() ;
				System.out.println("Error: el ISBN debe ser un número.") ;
			}
			if (mensajeString == false) {
				mensajeString = true ;
			}
			espacioLibro() ;
			System.out.print("Ingresar el nuevo ISBN: ") ;
			newISBN = R.readLine() ;
		}
		// El control ingresado es un número, así que podemos convertirlo en un entero
		newISBNNum = Integer.parseInt(newISBN) ;
		libro.ISBN = newISBNNum ;
		espacioLibro() ;
		System.out.println("El ISBN ha cambiado.\n") ;
	}
}