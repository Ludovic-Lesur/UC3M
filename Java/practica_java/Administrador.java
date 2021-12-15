/**
 * Javadoc
 * 
 * @author Ludovic Lesur
 * @since 01/11/2015
 */

package practica_java ;
import java.io.* ;

public class Administrador {
	
	// Datos de la class
	int numeroLibrerias ;
	CeldaLibreria principio ;
	CeldaLibreria corriente ;
	CeldaLibreria fin ;
		
	// Constructor
	Administrador() {
		numeroLibrerias = 0 ;
		principio = null ;
		corriente = null ;
		fin = null ;
	}
	
	// Mostrar el menu del administrador
	public void mostrarMenu() {
		System.out.println("Menu del administrador:") ;
		System.out.println("c = crear una nueva librer�a") ;
		System.out.println("m = mostrar las librer�as existentes") ;
		System.out.println("b = buscar una librer�a") ;
		System.out.println("s = salir del administrador\n") ;
	}
	
	// Probar si un administrador est� vac�o
	public boolean vacio(Administrador admin) {
		boolean resultado ;
		if (admin.principio == null) {
			resultado = true ;
		}
		else {
			resultado = false ;
		}
		return resultado ;
	}
	
	// Colocar el puntero corriente al principio de la lista de librer�as
	public void irPrincipio(Administrador admin) {
		if (vacio(admin) == false) {
			admin.corriente = admin.principio ;
		}
	}
	
	// Incrementar el puntero corriente, poniendolo sobre el elemento siguiente
	public void avanzar(Administrador admin) {
		if (vacio(admin) == false) {
			if (admin.corriente != admin.fin) {
				admin.corriente = admin.corriente.siguiente ;
			}
		}
	}
	
	// A�adir una librer�a
	// Modo 1 = ingresar una nueva por teclado
	// Modo 2 = a�adir una librer�ao existante (sirve para el m�todo de busqueda)
	public void anadirLibreria (Administrador admin, Libreria libreria, int modo) throws IOException {
		if (modo==1) {
			libreria = libreria.crearLibreria() ;
		}
		// Si la librer�a es igual a null, es decir que quer�amos importala desde un fichero de texto
		// Y que este proceso fracas�
		if (libreria != null) {
			CeldaLibreria nueva = new CeldaLibreria(libreria, null) ;
			admin.corriente = nueva ;
			if (vacio(admin) == true) {
				admin.principio = nueva ;
				admin.fin = nueva ;
			}
			else {
				admin.fin.siguiente = nueva ;
				admin.fin = nueva ;
			}
			admin.numeroLibrerias ++ ;
		}
	}
	
	// Eliminar el elemento mostrado por el puntero corriente
	public void eliminarCorriente (Administrador admin) {
		if (vacio(admin) == false) {
			// Caso 1 : queremos eliminar la primeria librer�a
			if (admin.corriente == admin.principio) {
				admin.corriente = admin.corriente.siguiente ;
				admin.principio = admin.corriente ;
			}
			else {
				CeldaLibreria aux = new CeldaLibreria(null, null) ;
				aux = admin.principio ;
				// Caso 2 : queremos eliminar la �ltima librer�a
				if (admin.corriente == admin.fin) {
					while (aux.siguiente != admin.fin) {
						aux = aux.siguiente ;
					}
					admin.corriente = aux ;
					admin.fin = admin.corriente ;
					admin.fin.siguiente = null ;
				}
				// Caso 3 : queremos eliminar una librer�a situada en el medio de la lista
				else {
					while (aux.siguiente != admin.corriente) {
						aux = aux.siguiente ;
					}
					aux.siguiente = admin.corriente.siguiente ;
					admin.corriente = aux.siguiente ;
				}
			}
		}
		admin.numeroLibrerias -- ;
	}
	
	// Eliminar una librer�a
	public void eliminarLibreria(Administrador admin, Libreria libreria) {
		if (vacio(admin)==false) {
			irPrincipio(admin) ;
			int contador = 1 ;
			// Colocamos el puntero corriente sobre la librer�a que nos interesa
			while (admin.corriente.libreria != libreria && contador <= admin.numeroLibrerias) {
				avanzar(admin) ;
				contador++ ;
			}
			if (contador <= admin.numeroLibrerias) {
				eliminarCorriente(admin) ;
			}
		}
		System.out.println("La librer�a ha sido eliminada.\n") ;
	}
	
	// Buscar una libreria por nombre
	public Administrador buscarLibreria(Administrador admin) throws IOException {
		// Administrador interno d�nde colocamos los resultados de la busqueda
		Administrador resultadoBusqueda = new Administrador() ;
		InputStreamReader I = new InputStreamReader(System.in) ;
		BufferedReader R = new BufferedReader(I) ;
		if (vacio(admin) == true) {
			System.out.println("Busqueda imposible: administrador vac�o.\n") ;
		}
		else {
			System.out.println("Busqueda de librer�a por nombre.\n") ;
			irPrincipio(admin) ;
			int i ;
			int encontrado = 0 ;
			System.out.print("Ingresar el nombre de la librer�a: ") ;
			String libreriaBuscada = R.readLine() ;
			System.out.println("Resultado de la busqueda:") ;
			// Para todas las librer�as guardadas...
			for (i=0 ; i<admin.numeroLibrerias ; i++) {
				Libreria libreriaActual = admin.corriente.libreria ;
				// Pruebamos si el nombre es igual a lo que buscamos
				if (libreriaActual.nombre.compareToIgnoreCase(libreriaBuscada) == 0) {
					encontrado ++ ;
					System.out.println(encontrado + ") " + libreriaActual.nombre) ;
					// Y a�adimos la librer�a a la lista de los resultados
					resultadoBusqueda.anadirLibreria(resultadoBusqueda, libreriaActual, 2) ;
				}
				avanzar(admin) ;
			}
			if (encontrado == 0) {
				System.out.println("Ning�na librer�a encontrada.\n") ;
			}
		}
		return resultadoBusqueda ;
	}
	
	// Menu que aparece despu�s de una busqueda con resultados
	public String menuBusqueda() throws IOException {
		System.out.println("\nAhora quiere...\nm = modificar una de estas librer�as\ne = eliminar una de estas librer�as\nv = volver al menu del administrador") ;
		InputStreamReader I = new InputStreamReader(System.in) ;
		BufferedReader R = new BufferedReader(I) ;
		String control = "" ;
		// Indica si tenemos que mostrar el mensaje de error
		boolean mensajeString = false ;
		// Aseguramos que el control ingresado es "m", "e" o "v"
		while (control.compareTo("m")!=0 && control.compareTo("e")!=0 && control.compareTo("v")!=0) {
			if (mensajeString == true) {
				System.out.println("Error: este opci�n no existe.") ;
			}
			if (mensajeString == false) {
				mensajeString = true ;
			}
			System.out.print("Elecci�n: ") ;
			control = R.readLine() ;
		}
		System.out.print("\n") ;
		return control ;
	}
	
	// Mostrar todas las librer�as guardadas
	public void mostrarAdministrador (Administrador admin) {
		if (vacio(admin) == true) {
			System.out.println("Ninguna librer�a guardada.") ;
		}
		else {
			System.out.println("El administrador tiene " + admin.numeroLibrerias + " librer�a(s) guardada(s) :") ;
			int i ;
			irPrincipio(admin) ;
			// Para cada librer�a del administrador...
			for (i=0 ; i<admin.numeroLibrerias ; i++) {
				Libreria libreriaActual = admin.corriente.libreria ;
				// Mostramos su nombre
				System.out.println((i+1) + ") " + libreriaActual.nombre) ;
				avanzar(admin) ;
			}
		}
	}
	
	// Para saber si una cadena de caracter se compone de num�ros
	public boolean isNumeric (String cadena) {
		try {
			Integer.parseInt(cadena) ;
		}
		catch(NumberFormatException ex) {
			// Si esta interrupci�n aparece, quiere decir que la cadena no se compone de n�meros
			return false ;
		}
		return true ;
	}
	
	// Para editar una librer�a a partir del administrador
	// El argumento "mensaje" permite cambiar el mensaje cu�ndo ingresamos al teclado (eliminar o modificar)
	public Libreria accederLibreria(Administrador admin, int mensaje) throws IOException {
		Libreria resultado = null ;
		if (vacio(admin) == false) {
			String numero = "" ;
			int numeroNum = 0 ;
			// Indican si tenemos que mostrar los mensajes de error
			boolean mensajeString = false ;
			boolean mensajeNum = false ;
			InputStreamReader I = new InputStreamReader(System.in) ;
			BufferedReader R = new BufferedReader(I) ;
			// El primer bucle verifica si el n�mero ingresado se situa entre 1 y el n�mero de librer�as existentes
			while (numeroNum < 1 || numeroNum > admin.numeroLibrerias) {
				if (mensajeNum == true) {
					System.out.println("Error: esta librer�a no existe.") ;
					mensajeString = false ;
					numero = "" ;
				}
				if (mensajeNum == false) {
					mensajeNum = true ;
				}
				// El segundo bucle verifica que el control ingresado es un n�mero
				while (isNumeric(numero) == false) {
					if (mensajeString == true) {
						System.out.println("Error: el control ingresado no es un n�mero.") ;
					}
					if (mensajeString == false) {
						mensajeString = true ;
					}
					if (mensaje==0) {
						System.out.print("Ingresar el n�mero de librer�a que quiere eliminar: ") ;
					}
					else {
						System.out.print("Ingresar el n�mero de librer�a que quiere modificar: ") ;
					}
					numero = R.readLine() ;
				}
				// El control ingresado es un n�mero, as� que podemos convertirlo en un entero para hacer la prueba del primer while
				numeroNum = Integer.parseInt(numero) ;
			}
			admin.irPrincipio(admin) ;
			int i ;
			for (i=0 ; i<(numeroNum-1) ; i++) {
				admin.avanzar(admin) ;
			}
			resultado = admin.corriente.libreria ;
		}
		return resultado ;
	}
}
