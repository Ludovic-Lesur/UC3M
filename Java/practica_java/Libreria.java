/**
 * Javadoc
 * 
 * @author Ludovic Lesur
 * @since 24/10/2015
 */

package practica_java ;
import java.io.* ;

public class Libreria {
	
	// Datos de la class
	String nombre ;
	int numeroLibros ;
	CeldaLibro principio ;
	CeldaLibro corriente ;
	CeldaLibro fin ;
	
	// Constructor
	Libreria() {
		nombre = "" ;
		numeroLibros = 0 ;
		principio = null ;
		corriente = null ;
		fin = null ;
	}
	
	// Mostrar el menu de las funciónes de la librería
	public void mostrarMenu() {
		espacio() ;
		System.out.println("Menu de la librería:") ;
		espacio() ;
		System.out.println("c = cambiar nombre de la librería") ;
		espacio() ;
		System.out.println("l = añadir un nuevo libro") ;
		espacio() ;
		System.out.println("m = mostrar el contenido de la librería") ;
		espacio() ;
		System.out.println("o = ordenar la librería") ;
		espacio() ;
		System.out.println("b = buscar un libro") ;
		espacio() ;
		System.out.println("v = volver al administrador\n") ;
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
	
	// Para creer un espacio antes de los mensajes
	public void espacio() {
		System.out.print("          ") ;
	}
	
	// Crear una nueva librería
	public Libreria crearLibreria() throws IOException {
		System.out.println("Creación de una nueva librería.") ;
		Libreria newLibreria = new Libreria() ;
		InputStreamReader I = new InputStreamReader(System.in) ;
		BufferedReader R = new BufferedReader(I) ;
		// Modo de creación
		System.out.println("Indicar el modo de creación:\n1) Manualmente\n2) A partir de un fichero de texto") ;
		String modo = "" ;
		int modoNum = 0 ;
		final int numeroOpciones = 2 ;
		// Indican si tenemos que mostrar los mensajes de error
		boolean mensajeString = false ;
		boolean mensajeNum = false ;
		// El primer bucle verifica si el número ingresado se situa entre 1 y el número de opciónes
		while (modoNum < 1 || modoNum > numeroOpciones) {
			if (mensajeNum == true) {
				System.out.println("Error: este opción no existe.") ;
				mensajeString = false ;
				modo = "" ;
			}
			if (mensajeNum == false) {
				mensajeNum = true ;
			}
			// El segundo bucle verifica que el control ingresado es un número
			while (isNumeric(modo) == false) {
				if (mensajeString == true) {
					System.out.println("Error: el control ingresado no es un número.") ;
				}
				if (mensajeString == false) {
					mensajeString = true ;
				}
				System.out.print("Modo de creación: ") ;
				modo = R.readLine() ;
			}
			// El control ingresado es un número, así que podemos convertirlo en un entero para hacer la prueba del primer while
			modoNum = Integer.parseInt(modo) ;
		}
		switch (modoNum) {
		case 1 :
			// Creación manual : pedimos el nombre de la nueva librería
			System.out.print("Ingresar el nombre de la librería: ") ;
			String newNombre = R.readLine() ;
			newLibreria.nombre = newNombre ;
			System.out.println("La librería ha sido creada correctamente.\n") ;
			exportarLibreria(newLibreria) ;
			break ;
		case 2 :
			// Creación a partir de un fichero de texto : pedimos el nombre de dicho fichero
			System.out.print("Ingresar el nombre completo del fichero con extensión .txt : ") ;
			String nombreFichero = R.readLine() ;
			newLibreria = importarLibreria(nombreFichero) ;
			if (newLibreria != null) {
				System.out.println("La librería ha sido creada correctamente.\n") ;
			}
			break ;
		}
		return newLibreria ;
	}
	
	// Cambiar el nombre de una librería
	public void cambiarNombre(Libreria libreria) throws IOException {
		espacio() ;
		System.out.print("Ingresar el nuevo nombre de la libreria " + libreria.nombre + ": ") ;
		InputStreamReader I = new InputStreamReader(System.in) ;
		BufferedReader R = new BufferedReader(I) ;
		String newNombre = R.readLine() ;
		libreria.nombre = newNombre ;
		espacio() ;
		System.out.println("El nombre de la librería ha cambiado.\n") ;
		exportarLibreria(libreria) ;
	}
	
	// Probar si una librería está vacía
	public boolean vacia(Libreria libreria) {
		boolean resultado ;
		if (libreria.principio == null) {
			resultado = true ;
		}
		else {
			resultado = false ;
		}
		return resultado ;
	}
	
	// Colocar el puntero corriente al principio de la librería
	public void irPrincipio(Libreria libreria) {
		if (vacia(libreria) == false) {
			libreria.corriente = libreria.principio ;
		}
	}
	
	// Incrementar el puntero corriente, poniendolo sobre el elemento siguiente
	public void avanzar(Libreria libreria) {
		if (vacia(libreria) == false) {
			if (libreria.corriente != libreria.fin) {
				libreria.corriente = libreria.corriente.siguiente ;
			}
		}
	}
	
	// Añadir un libro al fin de la librería
	// Modo 1 = ingresar un nuevo por teclado
	// Modo 2 = añadir un libro existante (sirve para los métodos de busqueda y de importación desde un fichero de texto)
	public void anadirLibro (Libreria libreria, Libro libro, int modo) throws IOException {
		if (modo==1) {
			libro = libro.crearLibro() ;
		}
		CeldaLibro nuevo = new CeldaLibro(libro, null) ;
		libreria.corriente = nuevo ;
		if (vacia(libreria) == true) {
			libreria.principio = nuevo ;
			libreria.fin = nuevo ;
		}
		else {
			libreria.fin.siguiente = nuevo ;
			libreria.fin = nuevo ;
		}
		libreria.numeroLibros ++ ;
		if (modo==1) {
			espacio() ;
			System.out.println("El nuevo libro ha sido añadido correctamente.\n") ;
		}
	}
	
	// Eliminar el elemento mostrado por el puntero corriente
	public void eliminarCorriente(Libreria libreria) {
		if (vacia(libreria) == false) {
			// Caso 1 : queremos eliminar el primer elemento de la librería
			if (libreria.corriente == libreria.principio) {
				libreria.corriente = libreria.corriente.siguiente ;
				libreria.principio = libreria.corriente ;
			}
			else {
				CeldaLibro aux = new CeldaLibro(null, null) ;
				aux = libreria.principio ;
				// Caso 2 : queremos eliminar el último elemento de la librería
				if (libreria.corriente == libreria.fin) {
					while (aux.siguiente != libreria.fin) {
						aux = aux.siguiente ;
					}
					libreria.corriente = aux ;
					libreria.fin = libreria.corriente ;
					libreria.fin.siguiente = null ;
				}
				// Caso 3 : queremos eliminar un elemento situado en el medio de la lista
				else {
					while (aux.siguiente != libreria.corriente) {
						aux = aux.siguiente ;
					}
					aux.siguiente = libreria.corriente.siguiente ;
					libreria.corriente = aux.siguiente ;
				}
			}
		}
		libreria.numeroLibros -- ;
	}
	
	// Eliminar un libro en la librería
	public void eliminarLibro(Libreria libreria, Libro libro) throws IOException {
		if (vacia(libreria) == false) {
			irPrincipio(libreria) ;
			int contador = 1 ;
			while (libreria.corriente.libro != libro && contador <= libreria.numeroLibros) {
				avanzar(libreria) ;
				contador++ ;
			}
			if (contador <= libreria.numeroLibros) {
				eliminarCorriente(libreria) ;
			}
		}
		espacio() ;
		System.out.println("El libro ha sido eliminado.\n") ;
	}
	
	// Invertir dos elementos en la librería
	// Sirve para el método ordenar()
	public void invertir(Libreria libreria, CeldaLibro celda1, CeldaLibro celda2) {
		if (vacia(libreria) == false) {
			if (celda2 == celda1.siguiente) {
				Libro temp = celda1.libro ;
				celda1.libro = celda2.libro ;
				celda2.libro = temp ;
			}
		}
	}
	
	// Ordenar la librería por apellido del autor (modo=1), titulo (modo=2), editorial (modo=3) o ISBN (modo=4)
	public void ordenar(Libreria libreria) throws IOException {
		if (vacia(libreria) == false) {
			espacio() ;
			System.out.println("Clasificación de la librería " + libreria.nombre + ":") ;
			espacio() ;
			System.out.println("1) por apellido del autor") ;
			espacio() ;
			System.out.println("2) por titulo") ;
			espacio() ;
			System.out.println("3) por editorial") ;
			espacio() ;
			System.out.println("4) por ISBN") ;
			// Modo de clasificación
			InputStreamReader I = new InputStreamReader(System.in) ;
			BufferedReader R = new BufferedReader(I) ;
			String modo = "" ;
			int modoNum = 0 ;
			final int numeroOpciones = 4 ;
			// Indican si tenemos que mostrar los mensajes de error
			boolean mensajeString = false ;
			boolean mensajeNum = false ;
			// El primer bucle verifica si el número ingresado se situa entre 1 y el número de opciónes
			while (modoNum < 1 || modoNum > numeroOpciones) {
				if (mensajeNum == true) {
					espacio() ;
					System.out.println("Error: este opción no existe.") ;
					mensajeString = false ;
					modo = "" ;
				}
				if (mensajeNum == false) {
					mensajeNum = true ;
				}
				// El segundo bucle verifica que el control ingresado es un número
				while (isNumeric(modo) == false) {
					if (mensajeString == true) {
						espacio() ;
						System.out.println("Error: el control ingresado no es un número.") ;
					}
					if (mensajeString == false) {
						mensajeString = true ;
					}
					espacio() ;
					System.out.print("Indique el tipo de clasificación: ") ;
					modo = R.readLine() ;
				}
				// El control ingresado es un número, así que podemos convertirlo en un entero para hacer la prueba del primer while
				modoNum = Integer.parseInt(modo) ;
			}
			CeldaLibro aux = new CeldaLibro(null, null) ;
			int fin = 0 ;
			int i = 0 ;
			for (fin=libreria.numeroLibros-1 ; fin>0 ; fin--) {
				aux = libreria.principio ;
				// Para cada libro hasta el indice 'fin' (que ello mismo se decrementa)...
				for (i=0 ; i<fin ; i++) {
					switch (modoNum) {
					// Clasificación por apellido del autor
					case 1 :
						if (aux.libro.autor.apellido.compareToIgnoreCase(aux.siguiente.libro.autor.apellido) > 0) {
							invertir(libreria, aux, aux.siguiente) ;
						}
						break ;
					// Clasificación por titulo del libro
					case 2 :
						if (aux.libro.titulo.compareToIgnoreCase(aux.siguiente.libro.titulo) > 0) {
							invertir(libreria, aux, aux.siguiente) ;
						}
						break ;
					// Clasificación por editorial del libro
					case 3 :
						if (aux.libro.editorial.compareToIgnoreCase(aux.siguiente.libro.editorial) > 0) {
							invertir(libreria, aux, aux.siguiente) ;
						}
						break ;
					// Clasificación por ISBN del libro
					case 4 :
						if (aux.libro.ISBN > aux.siguiente.libro.ISBN) {
							invertir(libreria, aux, aux.siguiente) ;
						}
						break ;
					}
					aux = aux.siguiente ;
				}
			}
			espacio() ;
			System.out.print("La librería ha sido ordenada ") ;
			switch (modoNum) {
			case 1 :
				System.out.println("por apellido de autor.\n") ;
				break ;
			case 2 :
				System.out.println("por titulo.\n") ;
				break ;
			case 3 :
				System.out.println("por editorial.\n") ;
				break ;
			case 4 :
				System.out.println("por ISBN.\n") ;
				break ;
			}
		}
		else {
			espacio() ;
			System.out.println("La librería " + libreria.nombre + " está vacía.\n") ;
		}
	}
	
	// Buscar libros
	public Libreria buscarLibro(Libreria libreria) throws IOException {
		// Librería interna dónde colocamos los resultados de la busqueda
		Libreria resultadoBusqueda = new Libreria() ;
		if (vacia(libreria) == true) {
			espacio() ;
			System.out.println("Busqueda imposible: librería vacía.\n") ;
		}
		else {
			espacio() ;
			System.out.println("Busqueda de libros:") ;
			espacio() ;
			System.out.println("1) por apellido del autor") ;
			espacio() ;
			System.out.println("2) por titulo") ;
			espacio() ;
			System.out.println("3) por editorial") ;
			espacio() ;
			System.out.println("4) por ISBN") ;
			// Modo de busqueda
			InputStreamReader I = new InputStreamReader(System.in) ;
			BufferedReader R = new BufferedReader(I) ;
			String modo = "" ;
			int modoNum = 0 ;
			final int numeroOpciones = 4 ;
			// Indican si tenemos que mostrar los mensajes de error
			boolean mensajeString = false ;
			boolean mensajeNum = false ;
			// El primer bucle verifica si el número ingresado se situa entre 1 y el número de opciónes
			while (modoNum < 1 || modoNum > numeroOpciones) {
				if (mensajeNum == true) {
					espacio() ;
					System.out.println("Error: este opción no existe.") ;
					mensajeString = false ;
					modo = "" ;
				}
				if (mensajeNum == false) {
					mensajeNum = true ;
				}
				// El segundo bucle verifica que el control ingresado es un número
				while (isNumeric(modo) == false) {
					if (mensajeString == true) {
						espacio() ;
						System.out.println("Error: el control ingresado no es un número.") ;
					}
					if (mensajeString == false) {
						mensajeString = true ;
					}
					espacio() ;
					System.out.print("Indique el tipo de busqueda: ") ;
					modo = R.readLine() ;
				}
				// El control ingresado es un número, así que podemos convertirlo en un entero para hacer la prueba del primer while
				modoNum = Integer.parseInt(modo) ;
			}
			System.out.print("\n") ;
			irPrincipio(libreria) ;
			int i ;
			int encontrado = 0 ;
			switch (modoNum) {
			case 1 :
				espacio() ;
				System.out.print("Ingresar el apellido del autor: ") ;
				String apellidoBuscado = R.readLine() ;
				espacio() ;
				System.out.println("Resultado de la busqueda:") ;
				// Para cada libro de la librería...
				for (i=0 ; i<libreria.numeroLibros ; i++) {
					Libro libroActual = libreria.corriente.libro ;
					// Pruebamos si el apellido del autor es igual a lo que buscamos
					if (libroActual.autor.apellido.compareToIgnoreCase(apellidoBuscado) == 0) {
						encontrado ++ ;
						espacio() ;
						System.out.print(encontrado + ") ") ;
						libroActual.mostrarLibro(libroActual) ;
						resultadoBusqueda.anadirLibro(resultadoBusqueda, libroActual, 2) ;
					}
					avanzar(libreria) ;
				}
				break ;
			case 2 :
				espacio() ;
				System.out.print("Ingresar el titulo del libro: ") ;
				String tituloBuscado = R.readLine() ;
				espacio() ;
				System.out.println("Resultado de la busqueda:") ;
				// Para cada libro de la librería...
				for (i=0 ; i<libreria.numeroLibros ; i++) {
					Libro libroActual = libreria.corriente.libro ;
					// Pruebamos si el nombre del autor es igual a lo que buscamos
					if (libroActual.titulo.compareToIgnoreCase(tituloBuscado) == 0) {
						encontrado ++ ;
						espacio() ;
						System.out.print(encontrado + ") ") ;
						libroActual.mostrarLibro(libroActual) ;
						resultadoBusqueda.anadirLibro(resultadoBusqueda, libroActual, 2) ;
					}
					avanzar(libreria) ;
				}
				break ;
			case 3 :
				espacio() ;
				System.out.print("Ingresar el editorial del libro: ") ;
				String editorialBuscado = R.readLine() ;
				espacio() ;
				System.out.println("Resultado de la busqueda:") ;
				// Para cada libro de la librería...
				for (i=0 ; i<libreria.numeroLibros ; i++) {
					Libro libroActual = libreria.corriente.libro ;
					// Pruebamos si el editorial es igual a lo que buscamos
					if (libroActual.editorial.compareToIgnoreCase(editorialBuscado) == 0) {
						encontrado ++ ;
						espacio() ;
						System.out.print(encontrado + ") ") ;
						libroActual.mostrarLibro(libroActual) ;
						resultadoBusqueda.anadirLibro(resultadoBusqueda, libroActual, 2) ;
					}
					avanzar(libreria) ;
				}
				break ;
			case 4 :
				espacio() ;
				System.out.print("Ingresar el ISBN del libro: ") ;
				int ISBNBuscado = Integer.parseInt(R.readLine()) ;
				espacio() ;
				System.out.println("Resultado de la busqueda:") ;
				// Para cada libro de la librería...
				for (i=0 ; i<libreria.numeroLibros ; i++) {
					Libro libroActual = libreria.corriente.libro ;
					// Pruebamos si el ISBN es igual a lo que buscamos
					if (libroActual.ISBN == ISBNBuscado) {
						encontrado ++ ;
						espacio() ;
						System.out.print(encontrado + ") ") ;
						libroActual.mostrarLibro(libroActual) ;
						resultadoBusqueda.anadirLibro(resultadoBusqueda, libroActual, 2) ;
					}
					avanzar(libreria) ;
				}
				break ;
			}
			if (encontrado == 0) {
				espacio() ;
				System.out.println("Ningún libro encontrado.\n") ;
			}
		}
		return resultadoBusqueda ;
	}
	
	// Menu que aparece después de una busqueda con resultados
	public String menuBusqueda() throws IOException {
		System.out.print("\n") ;
		espacio() ;
		System.out.println("Ahora quiere...") ;
		espacio() ;
		System.out.println("m = modificar los datos de uno de estos libros") ;
		espacio() ;
		System.out.println("e = eliminar uno de estos libros") ;
		espacio() ;
		System.out.println("v = volver al menu de la librería\n") ;
		InputStreamReader I = new InputStreamReader(System.in) ;
		BufferedReader R = new BufferedReader(I) ;
		String control = "" ;
		// Indica si tenemos que mostrar el mensaje de error
		boolean mensajeString = false ;
		while (control.compareTo("m")!=0 && control.compareTo("e")!=0 && control.compareTo("v")!=0) {
			if (mensajeString == true) {
				espacio() ;
				System.out.println("Error: este opción no existe.") ;
			}
			if (mensajeString == false) {
				mensajeString = true ;
			}
			espacio() ;
			System.out.print("Elección: ") ;
			control = R.readLine() ;
		}
		System.out.print("\n") ;
		return control ;
	}
	
	// Para editar un libro a partir de la librería
	// El argumento "mensaje" permite cambiar el mensaje cuándo ingresamos al teclado (eliminar o modificar)
	public Libro accederLibro(Libreria libreria, int mensaje) throws IOException {
		Libro resultado = null ;
		if (vacia(libreria) == false) {
			String numero = "" ;
			int numeroNum = 0 ;
			// Indican si tenemos que mostrar los mensajes de error
			boolean mensajeString = false ;
			boolean mensajeNum = false ;
			InputStreamReader I = new InputStreamReader(System.in) ;
			BufferedReader R = new BufferedReader(I) ;
			// El primer bucle verifica si el número ingresado se situa entre 1 y el número de librerías existentes
			while (numeroNum < 1 || numeroNum > libreria.numeroLibros) {
				if (mensajeNum == true) {
					espacio() ;
					System.out.println("Error: este libro no existe.") ;
					mensajeString = false ;
					numero = "" ;
				}
				if (mensajeNum == false) {
					mensajeNum = true ;
				}
				// El segundo bucle verifica que el control ingresado es un número
				while (isNumeric(numero) == false) {
					if (mensajeString == true) {
						espacio() ;
						System.out.println("Error: el control ingresado no es un número.") ;
					}
					if (mensajeString == false) {
						mensajeString = true ;
					}
					if (mensaje==0) {
						espacio() ;
						System.out.print("Ingresar el número de libro que quiere eliminar: ") ;
					}
					else {
						espacio() ;
						System.out.print("Ingresar el número de libro que quiere modificar: ") ;
					}
					numero = R.readLine() ;
				}
				// El control ingresado es un número, así que podemos convertirlo en un entero para hacer la prueba del primer while
				numeroNum = Integer.parseInt(numero) ;
			}
			System.out.print("\n") ;
			libreria.irPrincipio(libreria) ;
			int i ;
			// Colocamos el puntero corriente sobre la librería que nos interesa
			for (i=0 ; i<(numeroNum-1) ; i++) {
				libreria.avanzar(libreria) ;
			}
			resultado = libreria.corriente.libro ;
		}
		return resultado ;
	}
	
	// Mostrar la librería
	public void mostrar(Libreria libreria) {
		if (vacia(libreria) == true) {
			espacio() ;
			System.out.println("La librería " + libreria.nombre + " está vacía.") ;
		}
		else {
			espacio() ;
			System.out.println("La librería " + libreria.nombre + " tiene " + libreria.numeroLibros + " libro(s) guardado(s):") ;
			int i ;
			irPrincipio(libreria) ;
			// Para cada libro de la librería...
			for (i=0 ; i<libreria.numeroLibros ; i++) {
				Libro libroActual = libreria.corriente.libro ;
				espacio() ;
				libroActual.mostrarLibro(libroActual) ;
				avanzar(libreria) ;
			}
		}
		System.out.print("\n") ;
	}
	
	// Exportar la librería en un fichero de texto
	public void exportarLibreria(Libreria libreria) throws IOException {
		// Estas líneas permiten crear el fichero .txt si ya no existe
		// O bien de substituir lo si ya existe
		String nombreFicheroLib = libreria.nombre + ".txt" ;
		File ficheroLib = new File(nombreFicheroLib) ;
		FileWriter writerLib = new FileWriter(ficheroLib) ;
		// Escritura
		writerLib.write("Nombre de la librería : " + libreria.nombre + "\n") ;
		if (vacia(libreria) == false) {
			int i = 0 ;
			irPrincipio(libreria) ;
			// Para cada libro de la librería...
			for (i=0 ; i<libreria.numeroLibros ; i++) {
				Libro libroActual = new Libro() ;
				libroActual = libreria.corriente.libro ;
				writerLib.write(libroActual.autor.apellido + " ") ;
				writerLib.write(libroActual.autor.nombre + " ; ") ;
				writerLib.write(libroActual.titulo + " ; Ed: ") ;
				writerLib.write(libroActual.editorial + " ; ") ;
				writerLib.write(libroActual.ISBN + " ; ") ;
				if (libroActual.prestado == true) {
					writerLib.write("true ; " + libroActual.prestadoA.apellido + " " + libroActual.prestadoA.nombre + " ;\n") ;
				}
				else {
					writerLib.write("false ;\n") ;
				}
				avanzar(libreria) ;
			}
		}
		writerLib.close() ;
	}
	
	// Leer un fichero de texto para importar un librería
	public Libreria importarLibreria(String ficheroFuente) {
		Libreria libreria = new Libreria() ;
		// Indica la línea dónde se situa el primer error
		int linea = 1 ;
		// Colocamos todo el código de lectura en un bloque 'try'
		try {
			BufferedReader readerLib = new BufferedReader(new FileReader(ficheroFuente)) ;
			// Sirve para parar el programa desde el primer error
			boolean error = false ;
			// Indica la causa del error, mostrando el mensaje correspondiente
			int mensaje = 0 ;
			// El fichero fuente existe, luego empezamos la lectura
			String line = readerLib.readLine() ;
			if (line == null) {
				error = true ;
				mensaje = 1 ;
			}
			else {
				if (line.length() < 24) {
					error = true ;
					mensaje = 2 ;
				}
				else {
					if ((line.substring(0,24)).compareTo("Nombre de la librería : ") != 0) {
						error = true ;
						mensaje = 2 ;
					}
					else {
						if (line.length() == 24) {
							error = true ;
							mensaje = 3 ;
						}
						else {
							// Nombre de la librería
							libreria.nombre = line.substring(24) ;
						}
					}
				}
			}
			// Libros
			// Tamaño maximal de un campo
			final int lengthMax = 50 ;
			if (error == false) {
				linea ++ ;
				line = readerLib.readLine() ;
			}
			while (line != null && error == false) {
				Libro libro = new Libro() ;
				if (line.compareTo("") == 0) {
					error = true ;
					if (mensaje == 0) {
						mensaje = 4 ;
					}
				}
				else {
					int i = 0 ;
					int debut = i ;
					String actual = "a" ;
					// Apellido del autor
					while (actual.compareTo(" ") != 0 && error == false) {
						actual = line.substring(i, i+1) ;
						i++ ;
						if (i-debut == lengthMax || i == line.length()) {
							error = true ;
						}
					}
					if (error == false) {
						libro.autor.apellido = line.substring(debut, i-1) ;
					}
					else {
						if (mensaje == 0) {
							mensaje = 5 ;
						}
					}
					// Nombre del autor
					actual = "a" ;
					debut = i ;
					while (actual.compareTo(";") != 0 && error == false) {
						actual = line.substring(i, i+1) ;
						i++ ;
						if (i-debut == lengthMax || i == line.length()) {
							error = true ;
						}
					}
					if (error == false) {
						libro.autor.nombre = line.substring(debut, i-2) ;
					}
					else {
						if (mensaje == 0) {
							mensaje = 6 ;
						}
					}
					// Titulo
					actual = "a" ;
					debut = i+1 ;
					while (actual.compareTo(";") != 0 && error == false) {
						actual = line.substring(i, i+1) ;
						i++ ;
						if (i-debut == lengthMax || i == line.length()) {
							error = true ;
						}
					}
					if (error == false) {
						libro.titulo = line.substring(debut, i-2) ;
					}
					else {
						if (mensaje == 0) {
							mensaje = 7 ;
						}
					}
					// Editorial
					actual = "a" ;
					debut = i+1 ;
					while (actual.compareTo(";") != 0 && error == false) {
						actual = line.substring(i, i+1) ;
						i++ ;
						if (i-debut == lengthMax || i == line.length()) {
							error = true ;
						}
					}
					if (error == false) {
						libro.editorial = line.substring(debut+4, i-2) ;
					}
					else {
						if (mensaje == 0) {
							mensaje = 8 ;
						}
					}
					// ISBN
					actual = "a" ;
					debut = i+1 ;
					while (actual.compareTo(";") != 0 && error == false) {
						actual = line.substring(i, i+1) ;
						i++ ;
						if (i-debut == lengthMax || i == line.length()) {
							error = true ;
						}
					}
					if (error == false) {
						// El ISBN encontrado no es un número
						if (isNumeric(line.substring(debut, i-2)) == false) {
							error = true ;
							if (mensaje == 0) {
								mensaje = 9 ;
							}
						}
						else {
							libro.ISBN = Integer.parseInt(line.substring(debut, i-2)) ;
						}
					}
					else {
						if (mensaje == 0) {
							mensaje = 10 ;
						}
					}
					// Prestado
					actual = "a" ;
					debut = i+1 ;
					while (actual.compareTo(";") != 0 && error == false) {
						actual = line.substring(i, i+1) ;
						i++ ;
						if (i-debut == lengthMax || i == line.length()+1) {
							error = true ;
						}
					}
					if (error == false) {
						if ((line.substring(debut, i-2)).compareTo("true") == 0) {
							libro.prestado = true ;
							// Prestado A
							// Apellido del cliente
							actual = "a" ;
							i++ ;
							debut = i ;
							while (actual.compareTo(" ") != 0 && error == false) {
								actual = line.substring(i, i+1) ;
								i++ ;
								if (i-debut == lengthMax || i == line.length()) {
									error = true ;
								}
							}
							if (error == false) {
								libro.prestadoA.apellido = line.substring(debut, i-1) ;
							}
							// Nombre del cliente
							actual = "a" ;
							debut = i ;
							while (actual.compareTo(";") != 0 && error == false) {
								actual = line.substring(i, i+1) ;
								i++ ;
								if (i-debut == lengthMax || i == 1+line.length()) {
									error = true ;
								}
							}
							if (error == false) {
								libro.prestadoA.nombre = line.substring(debut, i-2) ;
							}
						}
						else {
							if ((line.substring(debut, i-2)).compareTo("false") == 0) {
								libro.prestado = false ;
							}
							else {
								error = true ;
								if (mensaje == 0) {
									mensaje = 11 ;
								}
							}
						}
					}
					else {
						if (mensaje == 0) {
							mensaje = 12 ;
						}
					}
				}
				// No hay ningún error hasta aquí, podemos añadir el nuevo libro y seguir
				if (error == false) {
					libreria.anadirLibro(libreria, libro, 2) ;
					linea ++ ;
					line = readerLib.readLine() ;
				}
			}
			readerLib.close() ;
			// Si hay un error, mostramos el mensaje correpondiente
			if (error == true) {
				if (mensaje != 1) {
					System.out.print("Lectura imposible, error de formato en la línea "+ linea + ": ") ;
				}
				switch (mensaje) {
				case 1 :
					System.out.println("Error: este fichero está vacío.") ;
					break ;
				case 2 :
					System.out.println("el formato no es respetado.") ;
					break ;
				case 3 :
					System.out.println("la librería no tiene nombre.") ;
					break ;
				case 4 :
					System.out.println("línea vacía.") ;
					break ;
				case 5 :
					System.out.println("problema a partir del apellido del autor.") ;
					break ;
				case 6 :
					System.out.println("problema a partir del nombre del autor.") ;
					break ;
				case 7 :
					System.out.println("problema a partir del titulo del libro.") ;
					break ;
				case 8 :
					System.out.println("problema a partir del editorial del libro.") ;
					break ;
				case 9 :
					System.out.println("el ISBN debe ser un número.") ;
					break ;
				case 10 :
					System.out.println("problema a partir del ISBN del libro.") ;
					break ;
				case 11 :
					System.out.println("el campo 'prestado' no es igual ni a 'false' ni a 'true'.") ;
					break ;
				case 12 :
					System.out.println("problema a partir del campo 'prestado'.") ;
					break ;
				}
				System.out.println("La librería no ha sido creada.\n") ;
				libreria = null ;
			}
			return libreria ;
		}
		catch(FileNotFoundException ex) {
			// El fichero ingresado no existe
			System.out.println("Error: este fichero no existe. La librería no ha sido creada.\n") ;
			return null ;
		}
		catch(IOException ex) {
			System.out.println("Lectura imposible: error de formato en la linea "+ linea + ". La librería no ha sido creada.\n") ;
			return null ;
		}
	}
}