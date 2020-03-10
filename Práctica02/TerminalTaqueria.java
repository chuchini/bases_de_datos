import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;

public class TerminalTaqueria {
    
	public static int noClientes;
	public static String menuActual; //fecha del menu actual
    
    
	public static void main (String [] args) throws IOException {
    	crearArchivo("Clientes.txt");
    	 
     	if (!estaEnArchivo("Clientes.txt", "Numero de clientes: ")){
        	noClientes = 0;
        	aniadirLineaArchivo("Clientes.txt","Numero de clientes: " + noClientes);
    	} else {
        	String lineaNumero = obtenLinea("Clientes.txt", "Numero de clientes:" );
        	String numStr = lineaNumero.substring(20, lineaNumero.length() );
        	//System.out.println("numStr " + numStr);
        	 
        	int num = Integer.parseInt(numStr);
        	 
        	noClientes = num;
     	}
    	 
    	crearArchivo("Ordenes.txt");
    	crearMenu();
    	 
    	 
    	boolean seguir = true;
   	 
    	while (seguir){
        	System.out.println("Escriba la accion que se realizara:");
        	System.out.println("1 Anadir cliente." +
                           	"\n2 Borrar cliente." +
                           	"\n3 Actualizar menu." +
                           	"\n4 Eliminar menu." +
                           	"\n5 Anadir orden." +
                           	"\n6 Buscar cliente." +
                           	"\n7 Salir.");
        	Scanner in = new Scanner(System.in);
        	String entrada = in.nextLine();
        	 
        	try {
            	int eleccion = Integer.parseInt(entrada);
            	switch (eleccion) {
                	case 1:
                    	aniadirCliente();
                    	break;
                	case 2:
                    	eliminarCliente();
                    	break;
                	case 3:
                    	actualizarMenu();
                    	break;
                	case 4:
                    	eliminarMenu();
                    	break;
                	case 5:
                    	aniadirOrden();
                    	break;
                	case 6:
                    	buscarCliente();
                    	break;
                	case 9:
                    	seguir = false;
                    	in.close();
                    	break;
                	}
            	} catch (Exception e) {
                	System.out.println("Opcion invalida");
            	}
    	}//fin de while
	}//fin de main
    
	/**
 	*  Regresa la primer linea que contenga cierta cadena.
 	*  Si no encuentra la cadena, imprime un mensaje de error y regresa la cadena vacía.
 	* @param archivo
 	* @param cadenaBuscada
 	* @return
 	* @throws FileNotFoundException
 	*/
	private static String obtenLinea(String archivo, String cadenaBuscada) throws FileNotFoundException {
   	 
    	File file = new File(archivo);

    	Scanner miScanner = new Scanner(file);
   	 
    	while (miScanner.hasNextLine()) {
        	String linea = miScanner.nextLine();
       	//System.out.println("estoy buscando en: " + linea);
       	if(linea.contains(cadenaBuscada)) {
            	miScanner.close();
            	return linea;
       	}
    	}
   	 
    	miScanner.close();
    	System.out.println("Error, cadena no encontrada");
    	return "";
	}

    
	/**
 	* Crea un nuevo archivo
 	* @param nombreArchivo
 	* @throws IOException
 	*/
	public static void crearArchivo(String nombreArchivo) throws IOException{
    	try {
        	BufferedWriter out = new BufferedWriter(new FileWriter(nombreArchivo, true));
        	out.close();
    	} catch (IOException e) { }
	}

    
	/**
 	* Busca en un archivo todas las lineas que contenga la cadena "linea Vieja", cuando las encuentra, las reemplaza
 	*  por la cadena linea Nueva. Si no encuentra la cadena el archivo permanece sin cambios.
 	* @param archivo
 	* @param lineaVieja
 	* @param lineaNueva
 	* @throws IOException
 	*/
	public static void editarArchivo(String archivo, String lineaVieja, String lineaNueva) throws IOException {
    	crearArchivo(archivo + "2"); //En este archivo se va a hacer una copia del archivo original
    	File file = new File(archivo);

    	Scanner miScanner = new Scanner(file);
   	 
    	while (miScanner.hasNextLine()) {
        	String linea = miScanner.nextLine();
        	//System.out.println("estoy buscando en: " + linea);
       	 
        	if(linea.contains(lineaVieja)) {
            	//System.out.println("la encontre " +cadenaBuscada+ " en el archivo " +file.getName());
            	aniadirLineaArchivo(archivo + "2", lineaNueva);
            	//System.out.println("reemplaze " +lineaVieja+  " por " + lineaNueva +" en el archivo " +file.getName());
        	} else {
            	aniadirLineaArchivo(archivo + "2", linea);
        	}
    	}//fin de while
   	 
    	//cierra el scanner
    	miScanner.close();
           	 
    	eliminarArchivo(archivo);
   	 
    	//le cambia el nombre al archivo temporal
           	 
    	File file2 = new File(archivo + "2");
    	File nombreNuevo = new File(archivo);
    	file2.renameTo(nombreNuevo);
	}
    
    
	/**
 	* Elimina todas las lineas que contengan una cadena. Si no la encuentra el archivo permance sin cambios.
 	* @param archivo
 	* @param lineaABorrar
 	* @throws IOException
 	*/
	public static void eliminarLinea(String archivo, String lineaABorrar) throws IOException{
   	 
    	crearArchivo(archivo + "2");
   	 
    	File file = new File(archivo);

    	Scanner miScanner = new Scanner(file);
   	 
    	while (miScanner.hasNextLine()) {
        	String linea = miScanner.nextLine();
      	 
        	//System.out.println("estoy buscando en: " + linea);
        	if(linea.contains(lineaABorrar)) {
            	//System.out.println("la encontre " +cadenaBuscada+ " en el archivo " +file.getName());
        	} else {
            	aniadirLineaArchivo(archivo + "2", linea);
        	}
    	}
   	 
    	//cierra el scanner
    	miScanner.close();
   	 
    	eliminarArchivo(archivo);
   	 
    	//le cambia el nombre al archivo temporal
           	 
    	File file2 = new File(archivo + "2");
    	File nombreNuevo = new File(archivo);
        	file2.renameTo(nombreNuevo);
	}
    
    
	/**
 	* Agrega una nueva linea al final de un archivo existente
 	* @param archivo
 	* @param lineaNueva
 	* @throws IOException
 	*/
	public static void aniadirLineaArchivo(String archivo, String lineaNueva) throws IOException{
    	FileWriter fw = null;
    	BufferedWriter bw = null;
    	PrintWriter out = null;
   	 
    	try {
        	fw = new FileWriter(archivo, true);
        	bw = new BufferedWriter(fw);
        	out = new PrintWriter(bw);
        	out.println(lineaNueva);
        	out.close();
    	} catch (IOException e) {}
	}

    
	/**
 	* Elimina un archivo
 	* @param archivo
 	*/
	public static void eliminarArchivo(String archivo){
    	File file = new File(archivo);
    	boolean borraste = file.delete();
        	if (borraste)
            	System.out.println("borre el archivo " + file.getName());
        	else
            	System.out.println("No borre el archivo " + file.getName()  );
	}
    
    
	/**
 	* Busca una cadena dentro de un archivo, si la encuentra imprime la encontré
 	* @param archivo
 	* @param cadenaBuscada
 	* @throws FileNotFoundException
 	*/
	public static void buscarEnArchivo(String archivo, String cadenaBuscada) throws FileNotFoundException{
   	 
    	File file = new File(archivo);

    	Scanner miScanner = new Scanner(file);
   	 
    	while (miScanner.hasNextLine()) {
        	String linea = miScanner.nextLine();
        	//System.out.println("estoy buscando en: " + linea);
        	if(linea.contains(cadenaBuscada)) {
            	System.out.println("la encontre " +cadenaBuscada+ " en el archivo " +file.getName());
            	break;
        	}
    	}
    	miScanner.close();
	}
    
    
	/**
 	* Busca una cadena en el archivo, si la encuentra regresa true; de no encontrarla regresa false.
 	* @param archivo
 	* @param cadenaBuscada
 	* @return
 	* @throws FileNotFoundException
 	*/
	public static boolean estaEnArchivo(String archivo, String cadenaBuscada) throws FileNotFoundException{
   	 
    	File file = new File(archivo);

    	Scanner miScanner = new Scanner(file);
   	 
    	while (miScanner.hasNextLine()) {
        	String linea = miScanner.nextLine();
        	//System.out.println("estoy buscando en: " + linea);
        	if(linea.contains(cadenaBuscada)) {
            	miScanner.close();
            	return true;
        	}
    	}
   	 
    	miScanner.close();
    	return false;
	}

    
	/**
 	* Imprime un archivo en la consola
 	* @param archivo
 	* @throws FileNotFoundException
 	*/
	public static void imprimirArchivo(String archivo) throws FileNotFoundException{
    	 
     	File file = new File(archivo);
    
     	Scanner miScanner = new Scanner(file);
    	 
     	while (miScanner.hasNextLine()) {
        	String linea = miScanner.nextLine();
        	System.out.println(linea);
     	}
     	miScanner.close();
 	}
    
    
	/**
 	* Pide al usuario un nombre de cliente. Ete nombre es añadido al archivo "Clientes.txt".
 	* El cliente es agregado junto a su número de cliente qu es calculado aumentando 1 al número de cliente anterior.
 	* @throws FileNotFoundException
 	* @throws IOException
 	*/
	public static void aniadirCliente() throws FileNotFoundException, IOException{
    	System.out.println("Escriba el nombre del cliente: ");
   	 
        	Scanner  scan= new Scanner(System.in);
        	String entrada = scan.nextLine();
   	 
        	if ( estaEnArchivo("Clientes.txt", entrada)){
            	System.out.println("El cliente ya existe");
            	return;
        	} else{
            	noClientes++;
            	aniadirLineaArchivo("Clientes.txt", entrada + " Cliente numero " + noClientes);
            	editarArchivo("Clientes.txt", "Numero de clientes:", "Numero de clientes: " + noClientes);
        	}
    	//scan.close();
    	}
  	 
    
	/**
 	* Elimina un cliente del archivo "Clientes.txt". De no encontrarse, imprime un mensaje y deja el archivo intacto.
 	* @throws IOException
 	*/
	public static void eliminarCliente() throws IOException{
    	System.out.println("Escriba el nombre del cliente que se va a borrar: ");
   	 
        	Scanner  scan= new Scanner(System.in);
        	String entrada = scan.nextLine();
   	 
        	if ( estaEnArchivo("Clientes.txt", entrada)){
            	eliminarLinea("Clientes.txt", entrada);
        	} else{
            	System.out.println("Nombre de cliente incorrecto");
       	}
        	//scan.close();
    	}

    
	/**
 	* Crea el menu inicial del restaurante. La fecha por defecto es 01 01 1900.
 	* @throws IOException
 	*/
	private static void crearMenu() throws IOException{
    	crearArchivo("Menu_01011900.txt");
   	 
    	if ( !estaEnArchivo("Menu_01011900.txt", "$") ){
   	 
        	aniadirLineaArchivo("Menu_01011900.txt", "Taco al pastor: $30");
        	aniadirLineaArchivo("Menu_01011900.txt", "Burrito: $40");
        	aniadirLineaArchivo("Menu_01011900.txt", "Taco de canasta: $40");
    	}
   	 
    	menuActual = "Menu_01011900.txt";   	 
	}
    
    
	/**
 	* Permite al usuario actualizar los precios del menu, pero no los platillos.
 	* @throws FileNotFoundException
 	* @throws IOException
 	*/
	public static void actualizarMenu() throws FileNotFoundException, IOException{
    	System.out.println("#### MENU ######");
        	imprimirArchivo(menuActual);
        	System.out.println("##########");
   	 
        	System.out.println("Escriba el nombre del planto que cambiará de precio: ");
   	 
        	Scanner  scan= new Scanner(System.in);
        	String platillo = scan.nextLine();
   	 
        	System.out.println("Escriba el nuevo precio: ");
        	double precio = 0;

        	try {
            	precio = Double.parseDouble(scan.nextLine());
        	} catch(Exception e) {
            	System.out.println("Ingresa un numero");
        	}
        	if ( estaEnArchivo(menuActual, platillo)){
            	editarArchivo(menuActual, platillo, platillo + ": $" + precio );
        	} else {
            	System.out.println("Nombre de platillo incorrecto");
       	}
        	//scan.close();
	}
    
    
	/**
 	* Se le pide al usuario una fecha, el menu anterior es reemplazado por
 	* un menu con la nueva fecha. No se cambian los precios ni los platillos.
 	*/
	public static void eliminarMenu(){
    	System.out.println("Escribe la nueva fecha del menu: ");
   	 
    	Scanner  scan= new Scanner(System.in);
    	String fecha = scan.nextLine();
   	 
    	String menuNuevo = "Menu_" + fecha + ".txt";
   	 
    	//le cambia el nombre al archivo temporal
           	 
    	File menu = new File(menuActual);
    	File nombreNuevo = new File(menuNuevo);
    	menu.renameTo(nombreNuevo);
   	 
    	menuActual = menuNuevo;
	}

    
	/**
 	* Se le pregunta al usuario un cliente, un platillo y un precio,
 	* después se añaden estos tres elementos al archivo "Ordenes.txt".
 	* De no encontrarse el cliente o el platillo se interrumpe el proceso
 	* y el archivo se deja intacto.
 	* @throws IOException
 	*/
	public static void aniadirOrden() throws IOException{
    	System.out.println("#### MENU ######");
        	imprimirArchivo(menuActual);
        	System.out.println("##########");

    	Scanner  scan= new Scanner(System.in);
   	 
    	System.out.println("Escriba el nombre del cliente: "); 	 
    	String cliente = scan.nextLine();
   	 
    	if ( !estaEnArchivo("Clientes.txt", cliente)){
        	System.out.println("Cliente no encontrado!");
        	return;
    	}
           	 
    	System.out.println("Escriba el platillo: ");
    	String platillo = scan.nextLine();
   	 
    	if ( !estaEnArchivo(menuActual, platillo)){
        	System.out.println("Platillo no encontrado!");
        	return;
    	}
   	 
        	System.out.println("Escriba la cantidad: ");
        	String cantidad = scan.nextLine();
   	 
        	String orden = cliente + " / " + platillo + " / " + cantidad;
        	aniadirLineaArchivo("Ordenes.txt", orden);
	}
    
	/**
 	* Pide al usuario un nombre de cliente. Se busca este nombre en el archivo "Ordenes.txt",
 	* después se crea un archivo llamdo "Reporte_noCliente.txt" donde noCliente es el número
 	* de cliente. De no encontrarse el cliente se interrumpe el proceso y no se produce el informe.
 	* @throws IOException
 	*/
	public static void buscarCliente () throws IOException{
   	 
    	Scanner  scan= new Scanner(System.in);
   	 
    	System.out.println("Escriba el nombre del cliente: "); 	 
    	String cliente = scan.nextLine();
   	 
        	if ( !estaEnArchivo("Clientes.txt", cliente)){
            	System.out.println("Cliente no encontrado!");
            	return;
        	}
   	 
        	int numeroCliente = buscarNumeroCliente(cliente);
  	 
        	String archivoCliente = "Reporte_" + numeroCliente +".txt";
   	 
        	// String archivoCliente = "Reporte_" + cliente +".txt";
        	eliminarArchivo(archivoCliente);
        	crearArchivo(archivoCliente);
        	aniadirLineaArchivo(archivoCliente, "Cliente: " + cliente);
        	aniadirLineaArchivo(archivoCliente, "Ordenes: ");   	 
   	 
        	// Esta parte se dedica a buscary añadir las ordenes
        	File file = new File("Ordenes.txt");

    	Scanner miScanner = new Scanner(file);
   	 
    	while (miScanner.hasNextLine()) {
        	String linea = miScanner.nextLine();
      	 
        	//System.out.println("estoy buscando en: " + linea);
        	if(linea.contains(cliente)) {
           	 
           	//System.out.println("la encontre " +cadenaBuscada+ " en el archivo " +file.getName());
            	String lineaLimpia = limpiarLinea(linea, cliente);
            	aniadirLineaArchivo(archivoCliente, lineaLimpia);
            	//System.out.println("añandi " +linea);
        	}
    	}
   	 
    	//cierra el scanner
    	miScanner.close();
	}
    
    
	/**
 	* Busca el número de un cliente
 	* @param cliente
 	* @return
 	* @throws FileNotFoundException
 	*/
	private static int buscarNumeroCliente(String cliente) throws FileNotFoundException {
    	String lineaCliente = obtenLinea("Clientes.txt", cliente);
   	 
    	int indexNum = lineaCliente.indexOf( "Cliente numero") + 15;
    	String numStr = lineaCliente.substring(indexNum, lineaCliente.length() );
    	int numeroCliente = Integer.parseInt(numStr);
    	return numeroCliente;
    	//return 0;
	}

    
	/**
 	* Toma una orden y remueve el nombre del cliente dejando solamente el platillo y la cantidad.
 	* @param linea
 	* @param parteAEliminar
 	* @return
 	*/
	private static String limpiarLinea(String linea, String parteAEliminar){
    	String regreso1 = 	linea.replaceAll(parteAEliminar, "");
    	String  regreso = regreso1.substring(3, regreso1.length() );
         	 
    	return regreso;
	}
}


