// Aqui vamos a crear un SubProceso  que contendra el primer juego de la colección del programa para ello usaremos la instrucción 
// SubProceso y FinSubProceso


SubProceso saber_y_ganar () 
	
	// Aqui vamos a declarar todas las variables del primer juego.	
	
	Definir op Como Entero;
	Definir opcion Como Caracter;
	Definir r Como Entero;
	Definir corr Como Entero;
	Definir inc Como Entero; 
	Definir resp Como Entero;
	Definir res1 Como Entero;
	Definir res2 Como Entero;
	Definir res3 Como Entero;
	Definir res4 Como Entero;
	Definir res5 Como Entero;
	Definir res6 Como Entero;
	Definir res7 Como Entero;
	Definir res8 Como Entero;
	Definir res9 Como Entero;
	Definir res10 Como Entero;
	Definir cont Como Entero;
	Definir nom Como Caracter;
	Definir porc Como Real;
	
	Borrar Pantalla;  // con Borrar Pantalla lo que vamos a conseguir es dejar la pantalla en blanco para que tolo lo que tiene que ver con el menú no apradca dentro del juego.
	
	// aquí vamos a poner la pantalla de inicio del juego que hara de intro.
	Escribir " __^__                                      __^__";
	Escribir "( ___ )------------------------------------( ___ )";
	Escribir " | / |                                      | \ |";
	Escribir " | / |                                      | \ |";
	Escribir " | / |            Saber y Ganar             | \ |";
	Escribir " | / |                                      | \ |";
	Escribir " |___|                                      |___|";
	Escribir "(_____)------------------------------------(_____) ";
	
	// con el comando Esperar lo que hacemos es que el codigo se detenga durante el tiempo asignado en este caso 2 segundos.
	
	Esperar 2 Segundos;
	
	// de nuevo borramos la pantalla para que simule una nueva pantalla
	
	Borrar Pantalla;
	
	// Ahora lo que aremos sera el menu de inicio del jugo Saber y ganar el cual constara de 3 indices de los cuales el usuario eligira uno por teclado
	
	Escribir "  __^__                                      __^__";
	Escribir " ( ___ )------------------------------------( ___ )";
	Escribir "  | / |                                      | \ |";
	Escribir "  | / |               1) Jugar               | \ |";
	Escribir "  | / |               2) Ayuda               | \ |";
	Escribir "  | / |               3) Salir               | \ |";
	Escribir "  |___|                                      |___|";
	Escribir " (_____)------------------------------------(_____) ";
	Escribir "";
	Escribir "         -- Elige la opción que prefieras --  ";
	
	// Este leer lo que hara sera guardar el número que marco el usuario, y el programa por medio de comparaciones sabra a que parte del codigo tiene que ir.
	
	Leer op;
	
	// Si el usuario eligio la opcion 1 el programa comparara la variable con los requisitos del "SI" y al ser iguales entrara en el juego propiamente dicho
	
	Si (op = 1) Entonces
		
		// Ahora lo que aremos sera iniciar los acumuladores "corr" y "inc" que son los que se ocuparan para de contavilizar las respuestas correctas e incorrectas
		
		corr<-0;
		inc<-0;
		
		Borrar Pantalla; // Borramos la pantalla para que se vea limpia la pantalla y ara el efecto de cambio de pantalla, y pondremos el titulo de la sección
		
		Escribir " ********************************";
		Escribir " *   Primera Pregunta           *";
		Escribir " *      - Categoria Geografía   *";
		Escribir " ********************************";
		
		// Con la variable "resp" lo que aremos sera conseguir un número al azar para ver cuales de las 10 preguntas de la primera tanda tocara.
		
		resp<-azar(10)+1;
		
		// Mostraremos las preguntas mediante "SI"  y con el numero al azar que tenemos en la variable "resp" podemos ver cual es la pregunta que a tocado
		
		Si (resp = 1)Entonces
			
			// Ahora le mostramos por pantalla al usuario la pregunta con las posibles soluciones 
			
			Escribir "";
			Escribir " @---------------------------------@";
			Escribir " | ¿Cuál es la capital de Turquía? |";
			Escribir " @---------------------------------@";
			Escribir "";
			Escribir " 1.- Ankara";
			Escribir "";
			Escribir " 2.- Kingston";
			Escribir "";
			Escribir " 3.- Tokio";
			Escribir "";
			Escribir " 4.- Dublin";
			Escribir "";
			
			// "res1" guardara la elecion del usuario
			
			leer res1;
			
			//  Con este conjunto de "SI , SINO" lo que aremos es programar si el usuario ha acertado o no, si la elcción del usuario coincide con el valor 
			// de res en la linea de comando del SI entonces el programa dara por buena la respuesta y en el acumulador "corr" sumara el valor que tenia 
			// corr mas 1 luego mostrara un mensaje al usuario que le dira que ha acertado. En el caso de que no coincida la elección del usuario, lo que hara el 
			// el programa sera que en el acumulador "inc" sumara el valor que tenia mas 1, en cualquiera de los dos casos esperara 2 segundos y se borrara la pantalla
			// para que no se aglomere toda la información.
			
			Si (res1 = 1)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
				
				// con esta opcion de que espere 2 segundos y luego  borre la pantalla se consigue de el resultado y que salte automaticamente a la siguiente pregunta.
				
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lo siento tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		// De esta manera concluiria la primera tanda de preguntas y saltaria el programa a la segunda tanda donde volveria a sacar un número por defecto  y a repetir 
		// el mismo proceso hata completar las 5 rondas de preguntas.
		
		Si (resp = 2)Entonces
			
			Escribir "";
			Escribir " @--------------------------------------------@";
			Escribir " | ¿Cuál es el nombre del desierto de México? |";
			Escribir " @--------------------------------------------@";
			Escribir "";
			Escribir " 1.- Sahara";
			Escribir "";
			Escribir " 2.- Gobi";
			Escribir "";
			Escribir " 3.- Ankara";
			Escribir "";
			Escribir " 4.- Sonora";
			Escribir "";
			
			leer res2;
			
			Si (res2 = 4)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lo siento tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 3)Entonces
			
			Escribir "";
			Escribir " @-------------------------------------@";
			Escribir " | ¿En qué isla italiana está Palermo? |";
			Escribir " @-------------------------------------@";
			Escribir "";
			Escribir " 1.- G.Canarias";
			Escribir "";
			Escribir " 2.- Sicilia";
			Escribir "";
			Escribir " 3.- Bora Bora";
			Escribir "";
			Escribir " 4.- Mauricio";
			Escribir "";
			
			leer res3;
			
			Si (res3 = 2)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lo siento tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 4)Entonces
			
			Escribir "";
			Escribir " @------------------------------------------------------@";
			Escribir " | ¿Cuál es el estado más grande de los Estados Unidos? |";
			Escribir " @------------------------------------------------------@";
			Escribir "";
			Escribir " 1.- Montana";
			Escribir "";
			Escribir " 2.- Oclahoma";
			Escribir "";
			Escribir " 3.- Alaska";
			Escribir "";
			Escribir " 4.- New York";
			Escribir "";
			
			leer res4;
			
			Si (res4 = 3)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lo siento tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 5)Entonces
			
			Escribir "";
			Escribir " @----------------------------------------------------------@";
			Escribir " | ¿Qué río europeo fluye a través de 10 países diferentes? |";
			Escribir " @----------------------------------------------------------@";
			Escribir "";
			Escribir " 1.- Rin";
			Escribir "";
			Escribir " 2.- Amazonas";
			Escribir "";
			Escribir " 3.- Danobio";
			Escribir "";
			Escribir " 4.- Nilo";
			Escribir "";
			
			leer res5;
			
			Si (res5 = 3) Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lo siento tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 6)Entonces
			
			Escribir "";
			Escribir " @----------------------------------------------------------@";
			Escribir " | ¿Qué río europeo fluye a través de 10 países diferentes? |";
			Escribir " @----------------------------------------------------------@";
			Escribir "";
			Escribir " 1.- Rin";
			Escribir "";
			Escribir " 2.- Amazonas";
			Escribir "";
			Escribir " 3.- Danobio";
			Escribir "";
			Escribir " 4.- Nilo";
			Escribir "";
			
			leer res6;
			
			Si (res6 = 3)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lo siento tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 7)Entonces
			
			Escribir "";
			Escribir " @--------------------------------------------------@";
			Escribir " | ¿Cuál es el continente más poblado de la tierra? |";
			Escribir " @--------------------------------------------------@";
			Escribir "";
			Escribir " 1.- Europa";
			Escribir "";
			Escribir " 2.- Asia";
			Escribir "";
			Escribir " 3.- Oceania";
			Escribir "";
			Escribir " 4.- Africa";
			Escribir "";
			leer res7;
			
			Si (res7 = 2)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lo siento tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
			FinSi
		FinSi
		
		Si (resp = 8)Entonces
			
			Escribir "";
			Escribir " @------------------------------------------------@";
			Escribir " | ¿Qué país tiene el mayor número de habitantes? |";
			Escribir " @------------------------------------------------@";
			Escribir "";
			Escribir " 1.- EE.UU";
			Escribir "";
			Escribir " 2.- Canada";
			Escribir "";
			Escribir " 3.- Rusia";
			Escribir "";
			Escribir " 4.- China";
			Escribir "";
			
			leer res8;
			
			Si (res8 = 4)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lo siento tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 9)Entonces
			
			Escribir "";
			Escribir " @----------------------------------------------@";
			Escribir " | ¿En qué país se encuentra la Torre de Belém? |";
			Escribir " @----------------------------------------------@";
			Escribir "";
			Escribir " 1.- Alemania";
			Escribir "";
			Escribir " 2.- Francia";
			Escribir "";
			Escribir " 3.- Portugal";
			Escribir "";
			Escribir " 4.- España";
			Escribir "";
			
			leer res9;
			
			Si (res9 = 3)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lo siento tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 10)Entonces
			
			Escribir "";
			Escribir " @-------------------------------------------@";
			Escribir " | ¿Cuál es la ciudad más antigua del mundo? |";
			Escribir " @-------------------------------------------@";
			Escribir "";
			Escribir " 1.- Damasco";
			Escribir "";
			Escribir " 2.- Sodoma";
			Escribir "";
			Escribir " 3.- Gomorra";
			Escribir "";
			Escribir " 4.- Jerusalem";
			Escribir "";
			
			leer res10;
			
			Si (res10 = 1)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lo siento tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		// Aqui hacemos un intermedio entre preguntas apartir de aqui no comentare mas hasta que halla novedades en el codigo.
		
		Escribir "  __^__                                      __^__";
		Escribir " ( ___ )------------------------------------( ___ )";
		Escribir "  | / |                                      | \ |";
		Escribir "  | / |    Presiona ENTER para continuar     | \ |";
		Escribir "  |___|                                      |___|";
		Escribir " (_____)------------------------------------(_____) ";
		Esperar Tecla;
		Borrar Pantalla;
		
		Escribir " ********************************";
		Escribir " *   Segunda Pregunta           *";
		Escribir " *      - Categoria Historia    *";
		Escribir " ********************************";
		
		resp<-azar(10)+1;
		
		
		Si (resp = 1)Entonces
			
			Escribir "";
			Escribir " @------------------------------------------------------@";
			Escribir " | ¿Qué civilización se asento en las orillas del Nilo? |";
			Escribir " @------------------------------------------------------@";
			Escribir "";
			Escribir " 1.- Egipcia";
			Escribir "";
			Escribir " 2.- Mesopotamica";
			Escribir "";
			Escribir " 3.- Griega";
			Escribir "";
			Escribir " 4.- Romana";
			Escribir "";
			
			leer res1;
			
			Si (res1 = 1)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Eureca!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Lastima tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 2)Entonces
			
			Escribir "";
			Escribir " @----------------------------------------------------------------------@";
			Escribir " | ¿Dónde se han encontrado los primeros documentos escritos del mundo? |";
			Escribir " @----------------------------------------------------------------------@";
			Escribir "";
			Escribir " 1.- Egipto";
			Escribir "";
			Escribir " 2.- Oriente Proximo";
			Escribir "";
			Escribir " 3.- Gricia";
			Escribir "";
			Escribir " 4.- Roma";
			Escribir "";
			
			leer res2;
			
			Si (res2 = 2)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Eureca!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lastima tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 3)Entonces
			
			Escribir "";
			Escribir "@---------------------------------------@";
			Escribir "| ¿Dónde se localizaba el Imperio inca? |";
			Escribir "@---------------------------------------@";
			Escribir "";
			Escribir " 1.- Mexico";
			Escribir "";
			Escribir " 2.- Onduras";
			Escribir "";
			Escribir " 3.- Peru";
			Escribir "";
			Escribir " 4.- Venezuela";
			Escribir "";
			
			leer res3;
			
			Si (res3 = 3)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Eureca!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Lastima tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 4)Entonces
			
			Escribir "";
			Escribir " @---------------------------------------------------------------------@";
			Escribir " | ¿Qué civilización se centró alrededor de la ciudad de Tenochtitlan? |";
			Escribir " @---------------------------------------------------------------------@";
			Escribir "";
			Escribir " 1.- Maya";
			Escribir "";
			Escribir " 2.- Tabajara";
			Escribir "";
			Escribir " 3.- Inca";
			Escribir "";
			Escribir " 4.- Azteca";
			Escribir "";
			
			leer res4;
			
			Si (res4 = 4)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Eureca!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lastima tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 5)Entonces
			
			Escribir "";
			Escribir " @--------------------------------------------------@";
			Escribir " | ¿Cuál fue la primera capital del Antiguo Egipto? |";
			Escribir " @--------------------------------------------------@";
			Escribir "";
			Escribir " 1.- Memfis";
			Escribir "";
			Escribir " 2.- Luxor";
			Escribir "";
			Escribir " 3.- Cairo";
			Escribir "";
			Escribir " 4.- Hamunaftra";
			Escribir "";
			
			leer res5;
			
			Si (res5 = 1)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Eureca!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lastima tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 6)Entonces
			
			Escribir "";
			Escribir " @----------------------------------------------------------------------------------------------------@";
			Escribir " | ¿Cuál es el periodo en el que se divide la historia más extenso en el que ha vivido el ser humano? |";
			Escribir " @----------------------------------------------------------------------------------------------------@";
			Escribir "";
			Escribir " 1.- El Mesozoico";
			Escribir "";
			Escribir " 2.- El paleolitico";
			Escribir "";
			Escribir " 3.- El jurasico";
			Escribir "";
			Escribir " 4.- El cretacico";
			Escribir "";
			
			Leer res6;
			
			Si (res6 = 2)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Eureca!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Lastima tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 7)Entonces
			
			Escribir "";
			Escribir "@---------------------------------------------------@";
			Escribir "| ¿Cuándo se considera que termina la Edad Antigua? |";
			Escribir "@---------------------------------------------------@";
			Escribir "";
			Escribir " 1.- Con la invención de la maquina a vapor";
			Escribir "";
			Escribir " 2.- Con la finalización de la I Guerra Mundial";
			Escribir "";
			Escribir " 3.- Con la caída del Imperio romano de Occidente";
			Escribir "";
			Escribir " 4.- Con la coronación de los reyes catolicos";
			Escribir "";
			
			Leer res7;
			
			Si (res7 = 3)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Eureca!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lastima tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 8)Entonces
			
			Escribir "";
			Escribir " @---------------------------------------------------------------------------@";
			Escribir " | ¿Qué emperador romano es conocido por haber tenido un amor con Cleopatra? |";
			Escribir " @---------------------------------------------------------------------------@";
			Escribir "";
			Escribir " 1.- Marco Antoni";
			Escribir "";
			Escribir " 2.- Marco Aurelio";
			Escribir "";
			Escribir " 3.- Neron";
			Escribir "";
			Escribir " 4.- Jilio Cesar";
			Escribir "";
			
			Leer res8;
			
			Si (res8 = 4)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Eureca!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lastima tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 9)Entonces
			
			Escribir "";
			Escribir " @-------------------------------------------------------------------------------------------@";
			Escribir " | ¿Qué conquitador asiático fundó el primer Imperio mongol y conquistó gran parte de China? |";
			Escribir " @-------------------------------------------------------------------------------------------@";
			Escribir "";
			Escribir " 1.- Gengis Kan";
			Escribir "";
			Escribir " 2.- Atila";
			Escribir "";
			Escribir " 3.- Liu Kang";
			Escribir "";
			Escribir " 4.- Confucio";
			Escribir "";
			
			Leer res9;
			
			Si (res9 = 1)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Eureca!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Lastima tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 10)Entonces
			
			Escribir "";
			Escribir " @-----------------------------------------------------------------------------------------------------@";
			Escribir " | ¿Cómo se llama la enfermedad que mató en la Edad Media a casi la mitad de los habitantes de Europa? |";
			Escribir " @-----------------------------------------------------------------------------------------------------@";
			Escribir "";
			Escribir " 1.- La fiebre española";
			Escribir "";
			Escribir " 2.- La Peste Negra";
			Escribir "";
			Escribir " 3.- Covid-19";
			Escribir "";
			Escribir " 4.- Tuberculosis";
			Escribir "";
			
			Leer res10;
			
			Si (res10 = 2)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Eureca!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Lastima tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Escribir "  __^__                                      __^__";
		Escribir " ( ___ )------------------------------------( ___ )";
		Escribir "  | / |                                      | \ |";
		Escribir "  | / |    Presiona ENTER para continuar     | \ |";
		Escribir "  |___|                                      |___|";
		Escribir " (_____)------------------------------------(_____) ";
		Esperar Tecla;
		Borrar Pantalla;
		
		Escribir " ********************************";
		Escribir " *   Tercera Pregunta           *";
		Escribir " *      - Categoria Naturaleza  *";
		Escribir " ********************************";
		
		resp<-azar(10)+1;
		
		
		Si (resp = 1)Entonces
			
			Escribir "";
			Escribir "@---------------------------------------------------------------@";
			Escribir "| ¿Según su forma de alimentarse, consideramos a los cerdos...? |";
			Escribir "@---------------------------------------------------------------@";
			Escribir "";
			Escribir "1.- Omnívoros";
			Escribir "";
			Escribir "2.- Hervibors";
			Escribir "";
			Escribir "3.- Carniboros";
			Escribir "";
			Escribir "4.- Veganos";
			Escribir "";
			
			leer res1;
			
			Si (res1 = 1)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Estupendo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 2)Entonces
			Escribir "";
			Escribir "@--------------------------------------------------------------------------------@";
			Escribir "| ¿Según su forma de reproducirse, consideramos a las tortugas como animales...? |";
			Escribir "@--------------------------------------------------------------------------------@";
			Escribir "";
			Escribir "1.- Oviparos";
			Escribir "";
			Escribir "2.- Viviparos";
			Escribir "";
			Escribir "3.- Metastaticos";
			Escribir "";
			Escribir "4.- Clonativos";
			Escribir "";
			
			leer res2;
			
			Si (res2 = 1)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Estupendo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 3)Entonces
			
			Escribir "";
			Escribir "@--------------------------------------------@";
			Escribir "| ¿Qué tipo de animales son los murciélagos? |";
			Escribir "@--------------------------------------------@";
			Escribir "";
			Escribir "1.- Anfivios";
			Escribir "";
			Escribir "2.- Reptiles";
			Escribir "";
			Escribir "3.- Mamiferos";
			Escribir "";
			Escribir "4.- Aves";
			Escribir "";
			
			Leer res3;
			
			Si (res3 = 3)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Estupendo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 4)Entonces
			
			Escribir "";
			Escribir "@-------------------------------------@";
			Escribir "| ¿Los equinodermos son animales ...? |";
			Escribir "@-------------------------------------@";
			Escribir "";
			Escribir "1.- Vertebrados";
			Escribir "";
			Escribir "2.- Amalgamicos";
			Escribir "";
			Escribir "3.- Esporas";
			Escribir "";
			Escribir "4.- Invertebrados";
			Escribir "";
			
			leer res4;
			
			Si (res4 = 4)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Estupendo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 5)Entonces
			
			Escribir "";
			Escribir "@--------------------------------------------@";
			Escribir "| ¿Cuántas patas tienen todos los arácnidos? |";
			Escribir "@--------------------------------------------@";
			Escribir "";
			Escribir "1.- Tiene 4 patas";
			Escribir "";
			Escribir "2.- Tiene 6 patas";
			Escribir "";
			Escribir "3.- Tiene 8 patas";
			Escribir "";
			Escribir "4.- Tiene 10 patas";
			Escribir "";
			
			Leer res5;
			
			Si (res5 = 3)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Estupendo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 6)Entonces
			
			Escribir "";
			Escribir "@-------------------------------------------------------------------------------@";
			Escribir "| ¿Cómo se llama el proceso por el que las plantas fabrican su propio alimento? |";
			Escribir "@-------------------------------------------------------------------------------@";
			Escribir "";
			Escribir "1.- Fotosintesis";
			Escribir "";
			Escribir "2.- Nutrición";
			Escribir "";
			Escribir "3.- Digestion";
			Escribir "";
			Escribir "4.- Sintesis";
			Escribir "";
			
			Leer res6;
		
			Si (res6 = 1)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Estupendo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 7)Entonces
			Escribir "";
			Escribir "@------------------------------------@";
			Escribir "| ¿Qué parte no pertenece a la flor? |";
			Escribir "@------------------------------------@";
			Escribir "";
			Escribir "1.- Estambre";
			Escribir "";
			Escribir "2.- Ovario";
			Escribir "";
			Escribir "3.- Caliz";
			Escribir "";
			Escribir "4.- Pistilo";
			Escribir "";
			
			Leer res7;
			
			Si (res7 = 2)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Estupendo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 8)Entonces
			
			Escribir "";
			Escribir "@------------------------------@";
			Escribir "| ¿Dónde se encuentra corazón? |";
			Escribir "@------------------------------@";
			Escribir "";
			Escribir "1.- En el lado derecho del tórax";
			Escribir "";
			Escribir "2.- En el lado izquierdo del tórax";
			Escribir "";
			Escribir "3.- En el tórax, entre los pulmones";
			Escribir "";
			Escribir "4.- En el torax delante de los pulmones";
			Escribir "";
			
			Leer res8;
			
			Si (res8 = 3)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Estupendo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 9)Entonces
			Escribir "";
			Escribir "@-------------------------------------@";
			Escribir "| ¿Cómo se mide la masa de un cuerpo? |";
			Escribir "@-------------------------------------@";
			Escribir "";
			Escribir "1.- Con una probeta";
			Escribir "";
			Escribir "2.- Con un osciloscopio";
			Escribir "";
			Escribir "3.- Con un amperimetro";
			Escribir "";
			Escribir "4.- Con una bascula";
			Escribir "";
			
			Leer res9;
			
			Si (res9 = 4)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Estupendo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 10)Entonces
			
			Escribir "";
			Escribir "@------------------------------------------------@";
			Escribir "| ¿Cuál de las siguientes máquinas no es simple? |";
			Escribir "@------------------------------------------------@";
			Escribir "";
			Escribir "1.- La grua";
			Escribir "";
			Escribir "2.- La polea";
			Escribir "";
			Escribir "3.- El plano inclinado";
			Escribir "";
			Escribir "4.- La palanca";
			Escribir "";
			
			Leer res10;
			
			Si (res10 = 1)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Estupendo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Escribir "  __^__                                      __^__";
		Escribir " ( ___ )------------------------------------( ___ )";
		Escribir "  | / |                                      | \ |";
		Escribir "  | / |    Presiona ENTER para continuar     | \ |";
		Escribir "  |___|                                      |___|";
		Escribir " (_____)------------------------------------(_____) ";
		Esperar Tecla;
		Borrar Pantalla;
		
		Escribir "********************************";
		Escribir "*   Cuarta Pregunta            *";
		Escribir "*      - Categoria Arte        *";
		Escribir "********************************";
		
		resp<-azar(10)+1;
		
		
		Si (resp = 1)Entonces
			
			Escribir "";
			Escribir "@--------------------------------@";
			Escribir "| ¿En que siglo nació Velázquez? |";
			Escribir "@--------------------------------@";
			Escribir "";
			Escribir "1.- Siglo XVII";
			Escribir "";
			Escribir "2.- Siglo XVIII";
			Escribir "";
			Escribir "3.- Siglo XV";
			Escribir "";
			Escribir "4.- Siglo XVI";
			Escribir "";
			
			Leer res1;
			
			Si (res1 = 1)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 2)Entonces
			Escribir "";
			Escribir "@----------------------------------@";
			Escribir "| ¿En que museo está la Mona Lisa? |";
			Escribir "@----------------------------------@";
			Escribir "";
			Escribir "1.- EL Prado";
			Escribir "";
			Escribir "2.- Louvre";
			Escribir "";
			Escribir "3.- Smithsonian";
			Escribir "";
			Escribir "4.- Britihs Museum";
			Escribir "";
			
			Leer res2;
			
			Si (res2 = 2)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 3)Entonces
			
			Escribir "";
			Escribir "@-------------------------------@";
			Escribir "| ¿En que siglo nació Van Gogh? |";
			Escribir "@-------------------------------@";
			Escribir "";
			Escribir "1.- Siglo XX";
			Escribir "";
			Escribir "2.- Siglo XVII";
			Escribir "";
			Escribir "3.- Siglo XIX";
			Escribir "";
			Escribir "4.- Siglo XVIII";
			Escribir "";
			
			Leer res3;
			
			Si (res3 = 3)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 4)Entonces
			Escribir "";
			Escribir "@------------------------------------------------------------@";
			Escribir "| ¿De que estilo es la catedral Nuestra señora de Notredame? |";
			Escribir "@------------------------------------------------------------@";
			Escribir "";
			Escribir "1.- Romanico";
			Escribir "";
			Escribir "2.- Rococó";
			Escribir "";
			Escribir "3.- Barroco";
			Escribir "";
			Escribir "4.- Gotico";
			Escribir "";
			
			Leer res4;
			
			Si (res4 = 4)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 5)Entonces
			
			Escribir "";
			Escribir "@------------------------------------------@";
			Escribir "| ¿En que siglo se inició el Renacimiento? |";
			Escribir "@------------------------------------------@";
			Escribir "";
			Escribir "1.- Siglo XV";
			Escribir "";
			Escribir "2.- Siglo VX";
			Escribir "";
			Escribir "3.- Siglo III";
			Escribir "";
			Escribir "4.- Siglo XIII";
			Escribir "";
			
			Leer res5;
			
			Si (res5 = 1)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 6)Entonces
			
			Escribir "";
			Escribir "@------------------------------------------------------@";
			Escribir "| ¿A que estilo pertenece < El David > de Miguelangel? |";
			Escribir "@------------------------------------------------------@";
			Escribir "";
			Escribir "1.- Barroco";
			Escribir "";
			Escribir "2.- Renacimiento";
			Escribir "";
			Escribir "3.- Gótico";
			Escribir "";
			Escribir "4.- Romanico";
			Escribir "";
			
			Leer res6;
			
			Si (res6 = 2)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 7)Entonces
			
			Escribir "";
			Escribir "@--------------------------------------------------------------------------------@";
			Escribir "| ¿Quien dibujo el cuadro que lleva por nombre < La persistencia de la memoria > |?";
			Escribir "@--------------------------------------------------------------------------------@";
			Escribir "";
			Escribir "1.- Velazquez";
			Escribir "";
			Escribir "2.- Goya";
			Escribir "";
			Escribir "3.- Salvador Dalí";
			Escribir "";
			Escribir "4.- Picaso";
			Escribir "";
			
			Leer res7;
			
			Si (res7 = 3)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 8)Entonces
			
			Escribir "";
			Escribir "@---------------------@";
			Escribir "| ¿Cuándo nació Goya? |";
			Escribir "@---------------------@";
			Escribir "";
			Escribir "1.- 1700";
			Escribir "";
			Escribir "2.- 1738";
			Escribir "";
			Escribir "3.- 1749";
			Escribir "";
			Escribir "4.- 1746";
			Escribir "";
			
			Leer res8;
			
			Si (res8 = 4)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 9)Entonces
			
			Escribir "";
			Escribir "@---------------------------------@";
			Escribir "| ¿La piedad es una escultura de? |";
			Escribir "@---------------------------------@";
			Escribir "";
			Escribir "1.- Miguel Angel";
			Escribir "";
			Escribir "2.- Leonardo Davinci";
			Escribir "";
			Escribir "3.- Donatello";
			Escribir "";
			Escribir "4.- Bernini";
			Escribir "";
			
			Leer res9;
			
			Si (res9 = 1)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 10)Entonces
			
			Escribir "";
			Escribir "@-------------------------------------------------------------------------------------------@";
			Escribir "| ¿Qué nombre recibe el estilo arquitectónico de las construcciones árabes en la península? |";
			Escribir "@-------------------------------------------------------------------------------------------@";
			Escribir "";
			Escribir "1.- Mozárabe";
			Escribir "";
			Escribir "2.- Nazarí";
			Escribir "";
			Escribir "3.- Arábigo";
			Escribir "";
			Escribir "4.- Arabesco";
			Escribir "";
			
			Leer res10;
			
			Si (res10 = 2)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
				Esperar 2 Segundos;
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Escribir "  __^__                                      __^__";
		Escribir " ( ___ )------------------------------------( ___ )";
		Escribir "  | / |                                      | \ |";
		Escribir "  | / |    Presiona ENTER para continuar     | \ |";
		Escribir "  |___|                                      |___|";
		Escribir " (_____)------------------------------------(_____) ";
		Esperar Tecla;
		Borrar Pantalla;
		
		Escribir "********************************";
		Escribir "*   Quinta Pregunta            *";
		Escribir "*      - Categoria Videojuegos *";
		Escribir "********************************";
		
		resp<-azar(10)+1;
		
		Si (resp = 1)Entonces
			Escribir "";
			Escribir "----------------------------------------------";
			Escribir "¿Que juego fue el primero en salir al mercado?";
			Escribir "----------------------------------------------";
			Escribir "";
			Escribir "1.- Pac-man";
			Escribir "";
			Escribir "2.- Pong";
			Escribir "";
			Escribir "3.- Pac-Man";
			Escribir "";
			Escribir "4.- Donkey Kong";
			Escribir "";
			leer res1;
			Si (res1 = 1)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Opss, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 2)Entonces
			Escribir "";
			Escribir "------------------------------------------------";
			Escribir "¿Qué edad tiene Leon Kennedy en Resident Evil 2?";
			Escribir "------------------------------------------------";
			Escribir "";
			Escribir "1.- 19";
			Escribir "";
			Escribir "2.- 21";
			Escribir "";
			Escribir "3.- 20";
			Escribir "";
			Escribir "4.- 22";
			Escribir "";
			leer res2;
			Si (res2 = 2)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Opss, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 3)Entonces
			Escribir "";
			Escribir "-------------------------------------------------";
			Escribir "¿Cómo se llama el primer nivel de Super Mario 64?";
			Escribir "-------------------------------------------------";
			Escribir "";
			Escribir "1.- Hazy Maze Cave"; 
			Escribir "";
			Escribir "2.- Jolly Roger Bay";
			Escribir "";
			Escribir "3.- Bob-omb Battlefield";
			Escribir "";
			Escribir "4.- Snowman,s Land";
			Escribir "";
			leer res3;
			Si (res3 = 3)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Opss, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 4)Entonces
			Escribir "";
			Escribir "------------------------------------------------------------------";
			Escribir "¿Qué capacidad tenían las Memory Card oficiales de PlayStation 2? ";
			Escribir "------------------------------------------------------------------";
			Escribir "";
			Escribir "1.- 16MB"; 
			Escribir "";
			Escribir "2.- 24MB";
			Escribir "";
			Escribir "3.- 2MB";
			Escribir "";
			Escribir "4.- 8MB";
			Escribir "";
			leer res4;
			Si (res4 = 4)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Opss, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 5)Entonces
			Escribir "";
			Escribir "-------------------------------------------------------------------";
			Escribir "¿Dónde podíamos jugar a The Legend of Zelda: Oracle of Ages/Seasons";
			Escribir "-------------------------------------------------------------------";
			Escribir "";
			Escribir "1.- Gameboy Color"; 
			Escribir "";
			Escribir "2.- Gameboy Clasic";
			Escribir "";
			Escribir "3.- Nintendo DS";
			Escribir "";
			Escribir "4.- Nintendo DSI";
			Escribir "";
			leer res5;
			Si (res5 = 1)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Opss, tu respuesta es incorrecta";
			FinSi
		FinSi 
		
		Si (resp = 6)Entonces
			Escribir "";
			Escribir "---------------------------------------------------------------------";
			Escribir "¿Cuál de estos juegos ha desarrollado Rockstar, autores de GTA y RDR?";
			Escribir "---------------------------------------------------------------------";
			Escribir "";
			Escribir "1.- Austin Powers: Oh, Behave!"; 
			Escribir "";
			Escribir "2.- Midnight Club";
			Escribir "";
			Escribir "3.- L.A. Noire";
			Escribir "";
			Escribir "4.- Earthworm Jim 3D";
			Escribir "";
			leer res6;
			Si (res6 = 2)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Opss, tu respuesta es incorrecta";
			FinSi
		FinSi 
		
		Si (resp = 7)Entonces
			Escribir "";
			Escribir "-------------------------------------------------------------";
			Escribir "¿Quién compuso la BSO de Metal Gear Solid 2: Sons of Liberty?";
			Escribir "-------------------------------------------------------------";
			Escribir "";
			Escribir "1.- Hans Zimmer"; 
			Escribir "";
			Escribir "2.- Jesper Kyd";
			Escribir "";
			Escribir "3.- Harry Gregson Williams";
			Escribir "";
			Escribir "4.- Jeremy Soule";
			Escribir "";
			leer res7;
			Si (res7 = 3)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Opss, tu respuesta es incorrecta";
			FinSi
		FinSi 
		
		Si (resp = 8)Entonces
			Escribir "";
			Escribir "------------------------------------------------------------------------";
			Escribir "¿Cuál fue el primer juego de Sonic en llegar a una consola de Nintendo? ";
			Escribir "------------------------------------------------------------------------";
			Escribir "";
			Escribir "1.- Sonic Heroes"; 
			Escribir "";
			Escribir "2.- Sonic Rivals";
			Escribir "";
			Escribir "3.- Sonic Unleashed";
			Escribir "";
			Escribir "4.- Sonic Advance";
			Escribir "";
			leer res8;
			Si (res8 = 4)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Opss, tu respuesta es incorrecta";
			FinSi
		FinSi 
		
		Si (resp = 9)Entonces
			Escribir "";
			Escribir "-----------------------------------------------------------------------------------------------------";
			Escribir "No hay opciones. Nada salvo una línea recta. ¿Adivinarías en qué juego se dice esta categórica frase?";
			Escribir "-----------------------------------------------------------------------------------------------------";
			Escribir "";
			Escribir "1.- Max Payne";
			Escribir "";
			Escribir "2.- Assasin,s Creed";
			Escribir "";
			Escribir "3.- Super Mario World";
			Escribir "";
			Escribir "4.- Killer Instinct";
			Escribir "";
			leer res9;
			Si (res9 = 1)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Opss, tu respuesta es incorrecta";
			FinSi
		FinSi 
		
		Si (resp = 10)Entonces
			Escribir "";
			Escribir "-------------------------------------------------";
			Escribir "¿En qué juego situarías al personaje de Broxigar?";
			Escribir "-------------------------------------------------";
			Escribir "";
			Escribir "1.- Legend Of Zelda";
			Escribir "";
			Escribir "2.- Word of Warcraft";
			Escribir "";
			Escribir "3.- Diablo";
			Escribir "";
			Escribir "4.- Star Craft";
			Escribir "";
			leer res10;
			Si (res10 = 2)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Opss, tu respuesta es incorrecta";
			FinSi
		FinSi 
		
		Escribir "  __^__                                      __^__";
		Escribir " ( ___ )------------------------------------( ___ )";
		Escribir "  | / |                                      | \ |";
		Escribir "  | / |   Presiona ENTER para conocer tus    | \ |";
		Escribir "  | / |       tus resultados finales         | \ |";
		Escribir "  |___|                                      |___|";
		Escribir " (_____)------------------------------------(_____) ";
		Esperar Tecla;
		
		Leer cont;
		
		// En la variable "porc" guardaremos el valor de la operacion de allar el tanto porciento de aciertos
		
		porc<-(corr/5) *100;
		
		Borrar Pantalla;
		
		// Aqui mostraremos los valores de las variables "corr, inc y porc" que represntanlos resultados de respuestas correctas, respuestas incorrectas, 
		// y el porcentaje de aciertos
		
		Escribir "*****************************************************************";
		Escribir "*************************** RESULTADOS **************************";
		Escribir "*****************************************************************";
		Escribir "*                                                               *";
		Escribir "*  - Respuestas correctas: ",corr,".                                   *";
		Escribir "*  - Respuestas incorrectas: ",inc, ".                                 *";
		Escribir "*  - Respondiste correctamente el ", porc, "% de las preguntas.         *";
		Escribir "*                                                               *";
		Escribir "*****************************************************************";
		
		Escribir "";
		
		Escribir "Presione cualquier tecla para volver al menu";
		
		Esperar Tecla;
		
		// Ahora lo que haremos sera volver a llamar al SubProceso para que reinicie el juego y asi volvamos al menu de inicio del juego
		
		saber_y_ganar;
		
	FinSi
	
	// Si la opcion elegida en el menu del juego es "2" nos mandara a la sección de ayuda la cual nos dara una breve descripción de que es y lo que hace el juego
	
	Si (op = 2) Entonces
		
		Borrar Pantalla;
		Escribir  "***********************************************************************";
		Escribir  "*                                                                     *";
		Escribir  "*                     << Preguntas y Respuestas >>                    *";
		Escribir  "*                                                                     *";
		Escribir  "*     Este juego consites en que el ordenador te hara un grupo de     *";
		Escribir  "*     cinco preguntas y las valorara en correctas e incorrectas,      *";
		Escribir  "*     una ved ayas contestado a todas las preguntas te dara tu        *";
		Escribir  "*     resultado que consistira en número de aciertos, número de       *";
		Escribir  "*     fallos y el tanto porciento de tus aciertos.                    *";
		Escribir  "*                                                                     *";
		Escribir  "*                                                       DIVIERTETE    *";
		Escribir  "*                                                                     *";
		Escribir  "***********************************************************************";
		
		Escribir "Presione cualquier tecla para volver al menu";
		
		// El comando "Esperar Tecla" lo que hace es detener la ejecución del codigo hasta que el usuario presiona cualquier tecla.
		
		Esperar Tecla;
		
		saber_y_ganar;
		
	FinSi
	
	// Si la opcion elegida en el menu del juego es "3" nos mandara a la sección Salir la cual nos dara la opción de salir del juego o de seguir jugando
	
	Si (op = 3) Entonces
		
		// Lo que vamos ha hacer es asegurarnos de que el usuario quiere de verdad salir del programa 
		
		Escribir "¿De verdad quiere salir del juego?";
		Escribir " Teclé < s > para abandonar o < n > para continuar jugando";
		Leer opcion;
		
		// En este "SI" le asisgnamos dos posibles solucuines en si y es que o el usuario presione "S" mayuscula o s minuscula y cualquiera de las dos seria correcta
		// para que la condicion se cumpla con lo cual una vez se ejecute saldra del SubProceso 
		Si (opcion="s" O opcion ="S") Entonces
			
			Escribir "Gracias por jugar a Saber y Ganar.";
			Escribir "Para continuar presione cualquier tecla";
			Esperar Tecla;
		FinSi
		
		// Aqui es igual que en el caso anterior pero con N o n, cuando se ejecute el codigo llamara al SubProceso Saber_y_Ganar 
		
		Si (opcion = "n" o opcion = "N") Entonces
			
			saber_y_ganar;
			
		FinSi
		
	FinSi
	
	
FinSubProceso

// Y hast aqui llega el primer juego de la colección 

SubProceso simon_dice
	
	// Aqui definimos las variables
	
	Definir numdado Como Entero;
	Definir dicho Como Real;
	Definir dichotexto Como Caracter;
	Definir num1 Como Real;
	Definir num2 Como Real;
	definir nu1 Como Caracter;
	Definir nu2 Como Caracter;
	definir nu3 Como Caracter;
	Definir num3 Como Real;
	Definir num4 Como Real;
	Definir resusuario Como Entero;
	Definir score Como Entero;
	Definir opcionsimon Como Entero;
	Definir opcion Como Caracter;
	
	// Creamos la pantalla de inicio
	
	Borrar Pantalla;
	
	Escribir " __^__                                      __^__";
	Escribir "( ___ )------------------------------------( ___ )";
	Escribir " | / |                                      | \ |";
	Escribir " | / |                                      | \ |";
	Escribir " | / |          ¡¡¡ SIMON DICE !!!          | \ |";
	Escribir " | / |                                      | \ |";
	Escribir " |___|                                      |___|";
	Escribir "(_____)------------------------------------(_____) ";
	Esperar 2 Segundos;
	Borrar Pantalla;
	
	// Creamos la pantalla menú
	
	Escribir " __^__                                      __^__";
	Escribir "( ___ )------------------------------------( ___ )";
	Escribir " | / |                                      | \ |";
	Escribir " | / |               1) Jugar               | \ |";
	Escribir " | / |               2) Ayuda               | \ |";
	Escribir " | / |               3) Salir               | \ |";
	Escribir " |___|                                      |___|";
	Escribir "(_____)------------------------------------(_____) ";
	Escribir "";
	Escribir "        -- Elige la opción que prefieras --  ";
	Leer opcionsimon;
	
	// despues de leer la variable "opcionsimon" según sea su valor ira a una parte de la esctructura "segun"
	
	Segun opcionsimon Hacer
		
		1:
			Escribir " __^__                                      __^__";
			Escribir "( ___ )------------------------------------( ___ )";
			Escribir " | / |                                      | \ |";
			Escribir " | / |          1) Facil                    | \ |";
			Escribir " | / |          2) Dificil                  | \ |";
			Escribir " | / |          3) Pesadilla                | \ |";
			Escribir " | / |          4) No apto para -18         | \ |";
			Escribir " |___|                                      |___|";
			Escribir "(_____)------------------------------------(_____) ";
			Escribir "";
			Escribir "        -- Elige la opción que prefieras --  ";
			Leer opcionsimon;
			
			Segun opcionsimon Hacer
				
				1:
					// como en el juego anterior en la posicion 1 tenemos el programa completo 
					// lo primero que hacemos es habir un repetir para que aya un bucle y siempre el programa nos este dando el reto de memorizar
					Repetir
						
						//ahora esperara un segundo para borrar la pantalla comenzara el algoritmo.
						
						Esperar 1 Segundos;
						Borrar Pantalla;
						
						// ahora al acumulador "numdado" le vamos ha hacer que cada vez que pase el bucle sume un numero aleatorio entre 1 y 25 ambos inclisibe al numero que
						// vale "numdado"
						
						numdado<-numdado+Aleatorio(1,25);
						Escribir " __^__                                      __^__";
						Escribir "( ___ )------------------------------------( ___ )";
						Escribir " | / |                                      | \ |";
						Escribir " | / |                                      | \ |";
						Escribir "             Simon dice:", numdado;
						Escribir " | / |                                      | \ |";
						Escribir " |___|                                      |___|";
						Escribir "(_____)------------------------------------(_____) ";
						
						Si (num1 > 0) o (num1 >= 100) Entonces
							Esperar 2 Segundos;
							
							Si (num1 > 101) o (num1 >= 1000) Entonces
								Esperar 3 Segundos;
								
								Si (num1 > 1001) o (num1 >= 100000) Entonces
									Esperar 4 Segundos;
									
									Si (num1 > 100001) o (num1 >= 100000) Entonces
										Esperar 5 Segundos;
										
										Si (num1 > 100001) o (num1 >= 10000000) Entonces
											Esperar 6 Segundos;
											
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
						
						Borrar Pantalla;
						
						// Ahora le pediremos por pantalla al usuario que nos marque el nímero que ha facilitado el ordenador con la variable "numdado"
						
						Escribir " __^__                                      __^__";
						Escribir "( ___ )------------------------------------( ___ )";
						Escribir " | / |                                      | \ |";
						Escribir " | / |                                      | \ |";
						Escribir " | / |       Repite la secuencia dada       | \ |";
						Escribir " | / |                                      | \ |";
						Escribir " |___|                                      |___|";
						Escribir "(_____)------------------------------------(_____) ";
						
						// la contestación del usuario la guardaremos en la variable "resusuario"
						
						Leer resusuario;
						
						// si la respuesta de usuario es igual al numero que nos da el ordenador nos dara el mensaje de que hemos acertado y que los puntos acumulados.
						
						Si resusuario=numdado Entonces
							
							Borrar Pantalla;
							Escribir " __^__                                      __^__";
							Escribir "( ___ )------------------------------------( ___ )";
							Escribir " | / |                                      | \ |";
							Escribir " | / |    As acertado simon esta contento   | \ |";
							
							// dentro del mensaje de que hemos acertado creamos otro acumulador que llamaremos "score" por cada vez que pasemos por el bucle y acertemos
							//nos sumara 4 
							
							score<-score + 4;
							Escribir " | / |         Tu puntuacion es de:         | \ |";
							
							// una vez iniciado el contador mostraremos el valor para mostrar que hemos acertado y los puntos que hemos acumulado.
							
							Escribir "                ", score, " PUNTOS";
							Escribir " |___|                                      |___|";
							Escribir "(_____)------------------------------------(_____) ";
							
							// el mensaje que muestra solo estara visible durante 2 segundos.
							
							Esperar 2 Segundos;
							
						SiNo
							
							// En el caso de que falles nos saldra el siguiente cuadro que nos dice que hemos perdido y nos mostrara el valor 
							// de la variable "score" que son los puntos acumulados.
							
							Escribir "@---------------------------------------------------------@";
							Escribir "|                                                         |";
							Escribir "|                  Lo siento as perdido                   |";
							Escribir "|                      ¡ GAME OVER !                      |";
							Escribir "|                                                         |";
							Escribir "      - Tu puntuación Final a sido de; ", score, " PUNTOS  ";
							Escribir "|                                                         |";
							Escribir "|            *Presione un tecla para continuar*           |";
							Escribir "|                                                         |";
							Escribir "@---------------------------------------------------------@";
							
							Esperar Tecla;
							
							// despues de pulsar una tecla el programa nos redirigira al inicio llamando de nuevo al SubProceso mediante su nombre.
							
							simon_dice;
							
						FinSi
						
						// todo este Proceso seguira en funcionamiento hasta que te equiboques en dar el resultado que el ordenador dice mediante la 
						// la comparatiba de variables, en este caso seran "resusuario y numdado"
						
					Hasta Que resusuario <> numdado
					
					
				2:
					
					Repetir
						
						//ahora esperara un segundo para borrar la pantalla comenzara el algoritmo.
						
						Esperar 1 Segundos;
						Borrar Pantalla;
						
						// ahora al acumulador "numdado" le vamos ha hacer que cada vez que pase el bucle sume un numero aleatorio entre 1 y 25 ambos inclisibe al numero que
						// vale "numdado"
						
						num2<-num2+(num2+Aleatorio(1,50));
						Escribir " __^__                                      __^__";
						Escribir "( ___ )------------------------------------( ___ )";
						Escribir " | / |                                      | \ |";
						Escribir " | / |                                      | \ |";
						Escribir "             Simon dice:", num2;
						Escribir " | / |                                      | \ |";
						Escribir " |___|                                      |___|";
						Escribir "(_____)------------------------------------(_____) ";
						Esperar 1 Segundos;
						Borrar Pantalla;
						
						// Ahora le pediremos por pantalla al usuario que nos marque el nímero que ha facilitado el ordenador con la variable "numdado"
						
						Escribir " __^__                                      __^__";
						Escribir "( ___ )------------------------------------( ___ )";
						Escribir " | / |                                      | \ |";
						Escribir " | / |                                      | \ |";
						Escribir " | / |       Repite la secuencia dada       | \ |";
						Escribir " | / |                                      | \ |";
						Escribir " |___|                                      |___|";
						Escribir "(_____)------------------------------------(_____) ";
						
						// la contestación del usuario la guardaremos en la variable "resusuario"
						
						Leer resusuario;
						
						// si la respuesta de usuario es igual al numero que nos da el ordenador nos dara el mensaje de que hemos acertado y que los puntos acumulados.
						
						Si resusuario=num2 Entonces
							
							Borrar Pantalla;
							Escribir " __^__                                      __^__";
							Escribir "( ___ )------------------------------------( ___ )";
							Escribir " | / |                                      | \ |";
							Escribir " | / |    As acertado simon esta contento   | \ |";
							
							// dentro del mensaje de que hemos acertado creamos otro acumulador que llamaremos "score" por cada vez que pasemos por el bucle y acertemos
							//nos sumara 4 
							
							score<-score + 4;
							Escribir " | / |         Tu puntuacion es de:         | \ |";
							
							// una vez iniciado el contador mostraremos el valor para mostrar que hemos acertado y los puntos que hemos acumulado.
							
							Escribir "                ", score, " PUNTOS";
							Escribir " |___|                                      |___|";
							Escribir "(_____)------------------------------------(_____) ";
							
							// el mensaje que muestra solo estara visible durante 2 segundos.
							
							Esperar 2 Segundos;
							
						SiNo
							
							// En el caso de que falles nos saldra el siguiente cuadro que nos dice que hemos perdido y nos mostrara el valor 
							// de la variable "score" que son los puntos acumulados.
							
							Escribir "@---------------------------------------------------------@";
							Escribir "|                                                         |";
							Escribir "|                  Lo siento as perdido                   |";
							Escribir "|                      ¡ GAME OVER !                      |";
							Escribir "|                                                         |";
							Escribir "      - Tu puntuación Final a sido de: ", score, " PUNTOS  ";
							Escribir "|                                                         |";
							Escribir "         - La respuesta correcta es: ", num2;
							Escribir "|                                                         |";
							Escribir "|            *Presione un tecla para continuar*           |";
							Escribir "|                                                         |";
							Escribir "@---------------------------------------------------------@";
							
							Esperar Tecla;
							
							// despues de pulsar una tecla el programa nos redirigira al inicio llamando de nuevo al SubProceso mediante su nombre.
							
							simon_dice;
							
						FinSi
						
						// todo este Proceso seguira en funcionamiento hasta que te equiboques en dar el resultado que el ordenador dice mediante la 
						// la comparatiba de variables, en este caso seran "resusuario y numdado"
						
						
					Hasta Que resusuario <> num2
					
					
				3:
					
					Repetir
						
						//ahora esperara un segundo para borrar la pantalla comenzara el algoritmo.
						
						Esperar 1 Segundos;
						Borrar Pantalla;
						
						// ahora al acumulador "numdado" le vamos ha hacer que cada vez que pase el bucle sume un numero aleatorio entre 1 y 25 ambos inclisibe al numero que
						// vale "numdado"
						
						//dicho por simon en la tirada anterior
						dicho<-num1;
						
						// numero aleatorio en la tirada					
						num2<-Aleatorio(1,75);
						
						// guardamos en nu2 el numero aleatorio echo texto
						nu2<-ConvertirATexto(num2);
						
						//guardamos el valor de la jugada anterior en forma de texto
						dichotexto<-ConvertirATexto(dicho);
						
						// unimos los dos valore echos texto en nu1
						nu1<-Concatenar(dichotexto,nu2);
						
						// guardamos en num1 el valor de nu1 echo numero que es el que dira simon en esta ronda
						num1<-ConvertirANumero(nu1);
						
						
						Escribir " __^__                                      __^__";
						Escribir "( ___ )------------------------------------( ___ )";
						Escribir " | / |                                      | \ |";
						Escribir " | / |                                      | \ |";
						Escribir "             Simon dice:", num1;
						Escribir " | / |                                      | \ |";
						Escribir " |___|                                      |___|";
						Escribir "(_____)------------------------------------(_____) ";
						
						Si (num1 > 0) o (num1 >= 100) Entonces
							Esperar 2 Segundos;
							
							Si (num1 > 101) o (num1 >= 1000) Entonces
								Esperar 3 Segundos;
								
								Si (num1 > 1001) o (num1 >= 100000) Entonces
									Esperar 4 Segundos;
									
									Si (num1 > 100001) o (num1 >= 100000) Entonces
										Esperar 5 Segundos;
										
										Si (num1 > 100001) o (num1 >= 10000000) Entonces
											Esperar 6 Segundos;
											
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
						
						Borrar Pantalla;
						
						// Ahora le pediremos por pantalla al usuario que nos marque el nímero que ha facilitado el ordenador con la variable "numdado"
						
						Escribir " __^__                                      __^__";
						Escribir "( ___ )------------------------------------( ___ )";
						Escribir " | / |                                      | \ |";
						Escribir " | / |                                      | \ |";
						Escribir " | / |       Repite la secuencia dada       | \ |";
						Escribir " | / |                                      | \ |";
						Escribir " |___|                                      |___|";
						Escribir "(_____)------------------------------------(_____) ";
						
						// la contestación del usuario la guardaremos en la variable "resusuario"
						
						Leer resusuario;
						
						// si la respuesta de usuario es igual al numero que nos da el ordenador nos dara el mensaje de que hemos acertado y que los puntos acumulados.
						
						Si resusuario=num1 Entonces
							
							Borrar Pantalla;
							Escribir " __^__                                      __^__";
							Escribir "( ___ )------------------------------------( ___ )";
							Escribir " | / |                                      | \ |";
							Escribir " | / |    As acertado simon esta contento   | \ |";
							
							// dentro del mensaje de que hemos acertado creamos otro acumulador que llamaremos "score" por cada vez que pasemos por el bucle y acertemos
							//nos sumara 4 
							
							score<-score + 4;
							Escribir " | / |         Tu puntuacion es de:         | \ |";
							
							// una vez iniciado el contador mostraremos el valor para mostrar que hemos acertado y los puntos que hemos acumulado.
							
							Escribir "                ", score, " PUNTOS";
							Escribir " |___|                                      |___|";
							Escribir "(_____)------------------------------------(_____) ";
							
							// el mensaje que muestra solo estara visible durante 2 segundos.
							
							Esperar 2 Segundos;
							
						SiNo
							
							// En el caso de que falles nos saldra el siguiente cuadro que nos dice que hemos perdido y nos mostrara el valor 
							// de la variable "score" que son los puntos acumulados.
							
							Escribir "@---------------------------------------------------------@";
							Escribir "|                                                         |";
							Escribir "|                  Lo siento as perdido                   |";
							Escribir "|                      ¡ GAME OVER !                      |";
							Escribir "|                                                         |";
							Escribir "      - Tu puntuación Final a sido de: ", score, " PUNTOS  ";
							Escribir "|                                                         |";
							Escribir "         - La respuesta correcta es: ", num1;
							Escribir "|                                                         |";
							Escribir "|            *Presione un tecla para continuar*           |";
							Escribir "|                                                         |";
							Escribir "@---------------------------------------------------------@";
							
							Esperar Tecla;
							
							// despues de pulsar una tecla el programa nos redirigira al inicio llamando de nuevo al SubProceso mediante su nombre.
							
							simon_dice;
							
						FinSi
						
						// todo este Proceso seguira en funcionamiento hasta que te equiboques en dar el resultado que el ordenador dice mediante la 
						// la comparatiba de variables, en este caso seran "resusuario y numdado"
						
						
					Hasta Que resusuario <> num1
					
					
				4:
					Repetir
						
						//ahora esperara un segundo para borrar la pantalla comenzara el algoritmo.
						
						Esperar 1 Segundos;
						Borrar Pantalla;
						
						// ahora al acumulador "numdado" le vamos ha hacer que cada vez que pase el bucle sume un numero aleatorio entre 1 y 25 ambos inclisibe al numero que
						// vale "numdado"
						
						//dicho por simon en la tirada anterior
						dicho<-num1;
						
						// numero aleatorio en la tirada					
						num2<-Aleatorio(1,200);
						
						// guardamos en nu2 el numero aleatorio echo texto
						nu2<-ConvertirATexto(num2);
						
						//guardamos el valor de la jugada anterior en forma de texto
						dichotexto<-ConvertirATexto(dicho);
						
						// unimos los dos valore echos texto en nu1
						nu1<-Concatenar(dichotexto,nu2);
						
						// guardamos en num1 el valor de nu1 echo numero que es el que dira simon en esta ronda
						num1<-ConvertirANumero(nu1);
						
						
						Escribir " __^__                                      __^__";
						Escribir "( ___ )------------------------------------( ___ )";
						Escribir " | / |                                      | \ |";
						Escribir " | / |                                      | \ |";
						Escribir "             Simon dice:", num1;
						Escribir " | / |                                      | \ |";
						Escribir " |___|                                      |___|";
						Escribir "(_____)------------------------------------(_____) ";
						
						Si (num1 > 0) o (num1 >= 100) Entonces
							Esperar 2 Segundos;
							
							Si (num1 > 101) o (num1 >= 1000) Entonces
								Esperar 3 Segundos;
								
								Si (num1 > 1001) o (num1 >= 100000) Entonces
									Esperar 4 Segundos;
									
									Si (num1 > 100001) o (num1 >= 100000) Entonces
										Esperar 5 Segundos;
										
										Si (num1 > 100001) o (num1 >= 10000000) Entonces
											Esperar 6 Segundos;
											
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
						
						Borrar Pantalla;
						
						// Ahora le pediremos por pantalla al usuario que nos marque el nímero que ha facilitado el ordenador con la variable "numdado"
						
						Escribir " __^__                                      __^__";
						Escribir "( ___ )------------------------------------( ___ )";
						Escribir " | / |                                      | \ |";
						Escribir " | / |                                      | \ |";
						Escribir " | / |       Repite la secuencia dada       | \ |";
						Escribir " | / |                                      | \ |";
						Escribir " |___|                                      |___|";
						Escribir "(_____)------------------------------------(_____) ";
						
						// la contestación del usuario la guardaremos en la variable "resusuario"
						
						Leer resusuario;
						
						// si la respuesta de usuario es igual al numero que nos da el ordenador nos dara el mensaje de que hemos acertado y que los puntos acumulados.
						
						Si resusuario=num1 Entonces
							
							Borrar Pantalla;
							Escribir " __^__                                      __^__";
							Escribir "( ___ )------------------------------------( ___ )";
							Escribir " | / |                                      | \ |";
							Escribir " | / |    As acertado simon esta contento   | \ |";
							
							// dentro del mensaje de que hemos acertado creamos otro acumulador que llamaremos "score" por cada vez que pasemos por el bucle y acertemos
							//nos sumara 4 
							
							score<-score + 4;
							Escribir " | / |         Tu puntuacion es de:         | \ |";
							
							// una vez iniciado el contador mostraremos el valor para mostrar que hemos acertado y los puntos que hemos acumulado.
							
							Escribir "                ", score, " PUNTOS";
							Escribir " |___|                                      |___|";
							Escribir "(_____)------------------------------------(_____) ";
							
							// el mensaje que muestra solo estara visible durante 2 segundos.
							
							Esperar 2 Segundos;
							
						SiNo
							
							// En el caso de que falles nos saldra el siguiente cuadro que nos dice que hemos perdido y nos mostrara el valor 
							// de la variable "score" que son los puntos acumulados.
							
							Escribir "@---------------------------------------------------------@";
							Escribir "|                                                         |";
							Escribir "|                  Lo siento as perdido                   |";
							Escribir "|                      ¡ GAME OVER !                      |";
							Escribir "|                                                         |";
							Escribir "      - Tu puntuación Final a sido de: ", score, " PUNTOS  ";
							Escribir "|                                                         |";
							Escribir "         - La respuesta correcta es: ", num1;
							Escribir "|                                                         |";
							Escribir "|            *Presione un tecla para continuar*           |";
							Escribir "|                                                         |";
							Escribir "@---------------------------------------------------------@";
							
							Esperar Tecla;
							
							// despues de pulsar una tecla el programa nos redirigira al inicio llamando de nuevo al SubProceso mediante su nombre.
							
							simon_dice;
							
						FinSi
						
						// todo este Proceso seguira en funcionamiento hasta que te equiboques en dar el resultado que el ordenador dice mediante la 
						// la comparatiba de variables, en este caso seran "resusuario y numdado"
						
						
					Hasta Que resusuario <> num1
					
			FinSegun
			
			
			
			
			
			
			
		2:	
			
			// en la Opcion 2 del programa se encuentra la ayuda es solo una pantalla de información como en el programa anterior donde 
			// nos da un pequeño resumen de lo que es el juego.
			
			Borrar Pantalla;
			Escribir  "***********************************************************************";
			Escribir  "*                                                                     *";
			Escribir  "*                          << Simon Dice >>                           *";
			Escribir  "*                                                                     *";
			Escribir  "*     Este juego consites en que el ordenador te ira dando una        *";
			Escribir  "*     serie de números los cuales iran en orden creciente y todo      *";
			Escribir  "*     trata de ir memorizando el numero que sale y darlo en           *";
			Escribir  "*     contestación a Simon, si haciertas sigues jugando pero si       *";
			Escribir  "*     fallas se acaba la partida por cada acierto sumaras puntos      *";
			Escribir  "*                                                                     *";
			Escribir  "*     ¿A cuantos puntos llegaras?                                     *";
			Escribir  "*                                                                     *";
			Escribir  "*                                                       DIVIERTETE    *";
			Escribir  "*                                                                     *";
			Escribir  "***********************************************************************";
			
			Escribir "Presione cualquier tecla para volver al menu";
			Esperar Tecla;
			
			simon_dice;
			
		3:
			Borrar Pantalla;
			
			Escribir "¿De verdad quiere salir del juego?";
			Escribir " Teclé < s > para abandonar o < n > para continuar jugando";
			Leer opcion;
			
			Si (opcion="s" O opcion ="S") Entonces
				
				Escribir "Gracias por jugar a Saimon Dice.";
				Escribir "Para continuar presione cualquier tecla";
				Esperar Tecla;
			FinSi
			
			Si (opcion = "n" o opcion = "N") Entonces
				
				simon_dice;
				
			FinSi
			
		De Otro Modo:
			
			Escribir "La opcion marcada no es valida seleccione de nuevo";
			simon_dice;
			
	FinSegun
	
FinSubProceso

SubProceso piedra_papel_tijeras
	
	Borrar Pantalla;
	
	Definir jugador1 Como Entero;
	Definir jugador2 Como Entero;
	Definir puntos1 Como Entero;
	Definir puntos2 Como Entero;
	Definir nombre Como Caracter;
	Definir ganador Como Caracter;
	Definir letra1 Como Caracter;
	Definir letra2 Como Caracter;
	Definir opcionppt Como Entero;
	Definir opcion Como Caracter;
	
	puntos1<-0;
	puntos2<-0;
	
	
	Escribir " __^__                                      __^__";
	Escribir "( ___ )------------------------------------( ___ )";
	Escribir " | / |                                      | \ |";
	Escribir " | / |             Bienvenido a             | \ |";
	Escribir " | / |                                      | \ |";
	Escribir " | / |         Piedra, Papel o Tijera       | \ |";
	Escribir " |___|                                      |___|";
	Escribir "(_____)------------------------------------(_____) ";
	Esperar 2 Segundos;
	Borrar Pantalla;
	
	
	Escribir "¿Que nómbre usaras para jugar?";
	Leer nombre;
	
	Borrar Pantalla;
	
	
	Escribir " __^__                                      __^__";
	Escribir "( ___ )------------------------------------( ___ )";
	Escribir " | / |                                      | \ |";
	Escribir " | / |               1) Jugar               | \ |";
	Escribir " | / |               2) Ayuda               | \ |";
	Escribir " | / |               3) Salir               | \ |";
	Escribir " |___|                                      |___|";
	Escribir "(_____)------------------------------------(_____) ";
	Escribir "";
	Escribir "        -- Elige la opción que prefieras --  ";
	Leer opcionppt;
	
	
	Segun opcionppt Hacer
		1:
			Repetir
				
				Escribir "";
				Escribir "";
				Escribir "                            (0 0)"; 
				Escribir "  @--------------------oOO-- (_) ----oOO--------------------@";
				Escribir "  |                                                         |";
				Escribir "  |                        Marcador                         |";
				Escribir "  |                                                         |";
				Escribir "      - ",nombre, " actualmete tiene ",puntos1," puntos.";
				Escribir "  |                                                         |";
				Escribir "      - CPU actualmente tiene ",puntos2," puntos";
				Escribir "  |                                                         |";
				Escribir "  |          * Presinona una tecla para continuar *         |";
				Escribir "  |                                                         |";
				Escribir "  @---------------------------------------------------------@";
				Escribir "                           |__| |__|"; 
				Escribir "                             || ||";
				Escribir "                            ooO Ooo"; 
				Esperar Tecla;
				Borrar Pantalla;
				
				
				Escribir " __^__                                      __^__";
				Escribir "( ___ )------------------------------------( ___ )";
				Escribir " | / |                                      | \ |";
				Escribir " | / |               1) Piedra              | \ |";
				Escribir " | / |               2) Papel               | \ |";
				Escribir " | / |               3) Tijeras             | \ |";
				Escribir " |___|                                      |___|";
				Escribir "(_____)------------------------------------(_____) ";
				Escribir "";
				Escribir "        -- Elige la opción que prefieras --  ";
				Leer jugador1;
				
				Si jugador1=1 Entonces
					letra1<-"Piedra";
					
					Si jugador1=2 Entonces
						letra1<-"Papel";
						
					FinSi
				SiNo
					letra1<-"Tijeras";
					
				FinSi
				
				Si jugador2=1 Entonces
					letra2<-"Piedra";
					
					Si jugador2=2 Entonces
						letra2<-"Papel";
						
					FinSi
				SiNo
					letra2<-"Tijeras";
					
				FinSi
				
				jugador2<-Aleatorio(1,3);
				
				Si (jugador1<>jugador2) Entonces
					Si ( jugador1==1 y jugador2==3 ) o ( jugador1==2 y jugador2==1 ) o ( jugador1==3 y jugador2==2 ) Entonces
						Escribir " __^__                                      __^__";
						Escribir "( ___ )------------------------------------( ___ )";
						Escribir " | / |       El Ganador de la ronda es:     | \ |";
						Escribir " | / |                                      | \ |";
						Escribir "                     ",nombre;
						Escribir " | / |                                      | \ |";
						Escribir "        Porque ",letra1," gana a ",letra2;
						Escribir " |___|                                      |___|";
						Escribir "(_____)------------------------------------(_____) ";
						Escribir "";
						
						puntos1<-puntos1+1;
					SiNo
						Si ( jugador2==1 y jugador1==3 ) o ( jugador2==2 y jugador1==1 ) o ( jugador2==3 y jugador1==2 ) Entonces
							Escribir " __^__                                      __^__";
							Escribir "( ___ )------------------------------------( ___ )";
							Escribir " | / |       El Ganador de la ronda es:     | \ |";
							Escribir " | / |                                      | \ |";
							Escribir "                     La CPU";
							Escribir " | / |                                      | \ |";
							Escribir "        Porque ",letra2," gana a ",letra1;
							Escribir " |___|                                      |___|";
							Escribir "(_____)------------------------------------(_____) ";
							Escribir "";
							
							puntos2<-puntos2+1; 
						FinSi
					FinSi
				SiNo
					Escribir " __^__                                      __^__";
					Escribir "( ___ )------------------------------------( ___ )";
					Escribir " | / |                                      | \ |";
					Escribir " | / |                                      | \ |";
					Escribir " | / |            ¡¡¡ Empate !!!            | \ |";
					Escribir " | / |                                      | \ |";
					Escribir " |___|                                      |___|";
					Escribir "(_____)------------------------------------(_____) ";
					Escribir "";
					
				FinSi
			Hasta Que (puntos1==10 o puntos2==10)
			
			Si (puntos1==10) Entonces
				ganador<-nombre;
			SiNo
				ganador<-"La CPU";
			FinSi
			
			Borrar Pantalla;
			Escribir "";
			Escribir " __^__                                      __^__";
			Escribir "( ___ )------------------------------------( ___ )";
			Escribir " | / |                                      | \ |";
			Escribir " | / |     El Ganador del Simon Dice es:    | \ |";
			Escribir " | / |                                      | \ |";
			Escribir "                    ",ganador;
			Escribir " | / |                                      | \ |";
			Escribir " | / | * Presiona una tecla para terminar * | \ |";
			Escribir " |___|                                      |___|";
			Escribir "(_____)------------------------------------(_____) ";
			Escribir "";
			Esperar Tecla;
			
		2:
			
			Borrar Pantalla;
			Escribir  "***********************************************************************";
			Escribir  "*                                                                     *";
			Escribir  "*                    << Piedra, Papel, Tijeras >>                     *";
			Escribir  "*                                                                     *";
			Escribir  "*     Este juego consites en el clasico juego de que una opcion       *";
			Escribir  "*     gana sobre las otras, el juego consistira en 10 rondas y        *";
			Escribir  "*     el que antes acumele 10 puntos gana la partida.                 *";
			Escribir  "*                                                                     *";
			Escribir  "*                                                       DIVIERTETE    *";
			Escribir  "*                                                                     *";
			Escribir  "***********************************************************************";
			
			Escribir "Presione cualquier tecla para volver al menu";
			Esperar Tecla;
			
			piedra_papel_tijeras;
			
		3:
			
			Borrar Pantalla;
			
			Escribir "¿De verdad quiere salir del juego?";
			Escribir " Teclé < s > para abandonar o < n > para continuar jugando";
			Leer opcion;
			
			Si (opcion="s" O opcion ="S") Entonces
				
				Escribir "Gracias por jugar a Piedra, Papel, Tijeras.";
				Escribir "Para continuar presione cualquier tecla";
				Esperar Tecla;
			FinSi
			
			Si (opcion = "n" o opcion = "N") Entonces
				
				piedra_papel_tijeras;
				
			FinSi
			
		De Otro Modo:
			
			Escribir "La opcion marcada no es valida, redirecionandolo al juego";
			Esperar 1 Segundos;
			piedra_papel_tijeras;
			
	FinSegun
	
FinSubProceso

SubProceso convinacion_perdida
	
	Definir opcioncp Como Entero;	
	Definir dificultad Como Entero;
	Definir opdificultad Como Entero;
	
	Borrar Pantalla;
	
	Escribir " __^__                                      __^__";
	Escribir "( ___ )------------------------------------( ___ )";
	Escribir " | / |                                      | \ |";
	Escribir " | / |             Bienvenido a             | \ |";
	Escribir " | / |                                      | \ |";
	Escribir " | / |         Convinación Perdida          | \ |";
	Escribir " |___|                                      |___|";
	Escribir "(_____)------------------------------------(_____) ";
	Esperar 2 Segundos;
	Borrar Pantalla;
	
	Escribir " __^__                                      __^__";
	Escribir "( ___ )------------------------------------( ___ )";
	Escribir " | / |                                      | \ |";
	Escribir " | / |               1) Jugar               | \ |";
	Escribir " | / |               2) Ayuda               | \ |";
	Escribir " | / |               3) Salir               | \ |";
	Escribir " |___|                                      |___|";
	Escribir "(_____)------------------------------------(_____) ";
	Escribir "";
	Escribir "        -- Elige la opción que prefieras --  ";
	Leer opcioncp;
	
	Borrar Pantalla;
	
	Escribir " __^__                                       __^__";
	Escribir "( ___ )-------------------------------------( ___ )";
	Escribir " | / |   ¿En que dificultad quieres jugar?   | \ |";
	Escribir " | / |                                       | \ |";
	Escribir " | / |              1) Muy Facil             | \ |";
	Escribir " | / |              2) Facil                 | \ |";
	Escribir " | / |              3) Media                 | \ |";
	Escribir " | / |              4) Dificil               | \ |";
	Escribir " | / |              5) Pesadilla             | \ |";
	Escribir " |___|                                       |___|";
	Escribir "(_____)-------------------------------------(_____) ";
	Escribir "";
	Escribir "        -- Elige la opción que prefieras --  ";
	Leer dificultad;
	
	Segun dificultad Hacer
		1:
			opdificultad<-1000;
			
		2:
			opdificultad<-50;
			
		3:
			opdificultad<-25;
			
		4:
			opdificultad<-10;
			
		5:  
			opdificultad<-5;
			
		De Otro Modo:
			
			Escribir "La opcion es incorrecta";
			
			convinacion_perdida;
			
	FinSegun
	
	
	
	Segun opcioncp Hacer
		1:
				Definir p0 Como Entero;
				Definir CO Como Caracter;
				Definir contador Como Entero;
				Definir error Como Logico;
				Definir c1 Como Caracter;
				Definir c2 Como Caracter;
				Definir c3 Como Caracter;
				Definir c4 Como Caracter;
				Definir p1 Como Caracter;
				Definir p2 Como Caracter;
				Definir p3 Como Caracter;
				Definir p4 Como Caracter;
				Definir aciertos Como Entero;
				Definir casiaciertos Como Entero;
				Definir posi1 Como Caracter;
				Definir posi2 Como Caracter;
				Definir posi3 Como Caracter;
				Definir posi4 Como Caracter;
				Definir position1 Como Logico;
				Definir position2 Como Logico;
				Definir position3 Como Logico;
				Definir position4 Como Logico;
				Definir seguirjugando Como Caracter;
				Definir confirmacioncolor Como Caracter;
				Definir cvueltas Como Entero;
				
				cvueltas<-0;
				
				Para contador<-1 Hasta 4 Con Paso 1 Hacer
				
				p0<-Aleatorio(1,6);
				
					Segun p0 hacer
						1:
							CO<-"am";
							
						2:
							CO<-"ro";
							
						3:
							CO<-"ve";
							
						4:
							CO<-"az";
							
						5:	
							CO<-"ne";
							
						6:
							CO<-"bl";
					FinSegun
					
					Segun contador Hacer
						
						1:
							p1<-CO;
							
						2:
							p2<-CO;
							
						3:
							p3<-CO;
							
						4:
							p4<-CO;
						
					FinSegun
				FinPara
					
					Repetir
						
						cvueltas<- cvueltas + 1;
						
						Borrar Pantalla;
						
						Repetir
							
							Escribir " __^__                                         __^__";
							Escribir "( ___ )---------------------------------------( ___ )";
							Escribir " | / |                                         | \ |";
							Escribir " | / |   Introduce tu combinacion de colores   | \ |";
							Escribir " | / |                                         | \ |";
							Escribir " | / |              am = Amarillo              | \ |";
							Escribir " | / |              ro = Rojo                  | \ |";
							Escribir " | / |              ve = Verde                 | \ |";
							Escribir " | / |              az = Azul                  | \ |";
							Escribir " | / |              ne = Negro                 | \ |";
							Escribir " | / |              bl = Blanco                | \ |";
							Escribir " |___|                                         |___|";
							Escribir "(_____)---------------------------------------(_____) ";
							Escribir "";
							
							Para contador<- 1 Hasta 4 Con Paso 1 Hacer
								
								Repetir
									Segun contador Hacer
										
										1:
											Escribir "Primer color";
											
										2:
											Escribir "Segundo color";
											
										3:
											Escribir "Tercer color";
											
										4:
											Escribir "Cuarto color";
										
									FinSegun
									
									Leer CO;
									Error<-Falso;
									
								Si CO <> "am" Entonces
									Si CO <> "ro" Entonces
										Si CO <> "ve" Entonces
											Si CO <> "az" Entonces
												Si CO <> "ne" Entonces
													Si CO <> "bl" Entonces
														Error<-Verdadero;
															Escribir "Color erroneo";
														FinSi
													FinSi
												FinSi
											FinSi
										FinSi
									FinSi
								Hasta Que error== Falso
									
								Segun contador Hacer
									
									1:
										c1<-CO;
										
									2:
										c2<-CO;
										
									3:
										c3<-CO;
										
									4:
										c4<-CO;
										
								FinSegun
								
							FinPara
								
						Borrar Pantalla;	
						
						Escribir " __^__                                        __^__";
						Escribir "( ___ )--------------------------------------( ___ )";
						Escribir " | / |                                        | \ |";
						Escribir " | / |   Combinacion de colores establecida   | \ |";
						Escribir " | / |                                        | \ |";
						Escribir " | / |            1º color = ",c1,"               | \ |";
						Escribir " | / |            2º color = ",c2,"               | \ |";
						Escribir " | / |            3º color = ",c3,"               | \ |";
						Escribir " | / |            4º color = ",c4,"               | \ |";
						Escribir " |___|                                        |___|";
						Escribir "(_____)--------------------------------------(_____) ";
						Escribir "";
						
						Escribir "Esta bien la convinacion de colores (Si / No)";
						Leer confirmacioncolor;
						
					Hasta Que (confirmacioncolor = "si") o (confirmacioncolor = "SI") o (confirmacioncolor = "Si") o (confirmacioncolor = "sI") o (confirmacioncolor = "s") o (confirmacioncolor = "S") o (confirmacioncolor = "n") o (confirmacioncolor = "N")
						
						aciertos<-0;
						casiaciertos<-0;
						
						position1<-Verdadero;
						position2<-Verdadero;
						position3<-Verdadero;
						position4<-Verdadero;
						
						si (posi1 = c1) Entonces
							aciertos<- aciertos + 1;
							position1<-Falso;
						FinSi
						
						Si (posi2 = c2) Entonces
							aciertos<- aciertos +1;
							position2<-Falso;
						FinSi
						
						si (posi3 = c3) Entonces
							aciertos<- aciertos + 1;
							position3<-Falso;
						FinSi
						
						Si (posi4 = c4) Entonces
							aciertos<- aciertos +1;
							position4<-Falso;
						FinSi
						
						Si (position1 = Verdadero) Entonces
							
							Si (p1 = c2) Entonces
								casiaciertos<-casiaciertos + 1;
								position1<- Falso;
							FinSi
							
							Si (p1 = c3) Entonces
								casiaciertos<-casiaciertos + 1;
								position1<- Falso;
							FinSi
							
							Si (p1 = c4) Entonces
								casiaciertos<-casiaciertos + 1;
								position1<- Falso;
							FinSi
						FinSi
						
						Si (position2 = Verdadero) Entonces
							
							Si (p2 = c1) Entonces
								casiaciertos<-casiaciertos + 1;
								position2<- Falso;
								
							SiNo
								
								Si (p2 = c3) Entonces
									casiaciertos<-casiaciertos + 1;
									position2<- Falso;
								SiNo
									Si (p2 = c4) Entonces
										casiaciertos<-casiaciertos + 1;
										position2<- Falso;
									FinSi
								FinSi
							FinSi
						FinSi
						
						Si (position3 = Verdadero) Entonces
							
							Si (p1 = c1) Entonces
								casiaciertos<-casiaciertos + 1;
								position3<- Falso;
							SiNo
								Si (p1 = c3) Entonces
									casiaciertos<-casiaciertos + 1;
									position3<- Falso;
								SiNo
									Si (p1 = c4) Entonces
										casiaciertos<-casiaciertos + 1;
										position3<- Falso;
									FinSi
								FinSi
							FinSi
						FinSi
						
						Si (position4 = Verdadero) Entonces
							
							Si (p4 = c1) Entonces
								casiaciertos<-casiaciertos + 1;
								position4<- Falso;
							SiNo
								Si (p4 = c2) Entonces
									casiaciertos<-casiaciertos + 1;
									position4<- Falso;
								SiNo
									Si (p4 = c3) Entonces
										casiaciertos<-casiaciertos + 1;
										position4<- Falso;
									FinSi
								FinSi
							FinSi
						FinSi
						
						seguirjugando<-"Si";	
						
						Si aciertos = 4 Entonces
							
							Borrar Pantalla;
							Escribir "           @-------------------------------@";
							Escribir "   ________|        << Enorabuena >>       |_______";
							Escribir "   \       |                               |       /";
							Escribir "    \      |  Descifrastes la convinación  |      /";
							Escribir "    /      @_______________________________@      \";
							Escribir "   /__________)                         (__________\";
							
						SiNo
							
							
							Escribir " __^__                                                __^__";
							Escribir "( ___ )----------------------------------------------( ___ )";
							Escribir " | / |                                                | \ |";
							Escribir " | / |  Has tenido ",aciertos, " En color y posicion.             | \ |";
							Escribir " | / |                                                | \ |";
							Escribir " | / |  Has tenido ",casiaciertos," Solo color                       | \ |";
							Escribir " | / |                                                | \ |";
							Escribir " | / |  LLevas ",cvueltas," intentos.                            | \ |";
							Escribir " |___|                                                |___|";
							Escribir "(_____)----------------------------------------------(_____) ";
							Escribir "";
							Esperar 1 Segundos;
						FinSi
						
						Si (opdificultad == cvueltas) Entonces
								
								Escribir " __^__                                        __^__";
								Escribir "( ___ )--------------------------------------( ___ )";
								Escribir " | / |                                        | \ |";
								Escribir " | / |               GAME OVER                | \ |";
								Escribir " | / |                                        | \ |";
								Escribir " | / |      La combinación correcta era:      | \ |";
								Escribir " | / |                                        | \ |";
								Escribir " | / |            1º color = ",p1,"               | \ |";
								Escribir " | / |            2º color = ",p2,"               | \ |";
								Escribir " | / |            3º color = ",p3,"               | \ |";
								Escribir " | / |            4º color = ",p4,"               | \ |";
								Escribir " |___|                                        |___|";
								Escribir "(_____)--------------------------------------(_____) ";
								Escribir "";
								Escribir "           Pulsa una tecla para continuar";
								Esperar Tecla;
								
								convinacion_perdida;
								
						FinSi
							Escribir "             ¿Quieres seguir jugando? (S/N)";
							Leer seguirjugando;
							
						Hasta Que (Aciertos = 4) o (seguirjugando="no");
			
		2:
			
			Borrar Pantalla;
			Escribir  "***********************************************************************";
			Escribir  "*                                                                     *";
			Escribir  "*                    << Convinación Perdida >>                        *";
			Escribir  "*                                                                     *";
			Escribir  "*     Este juego consites en que el ordenador generar una             *";
			Escribir  "*     convinación de colores y tu deberas de intentar de descubir     *";
			Escribir  "*     la convinación perdida.                                         *";
			Escribir  "*                                                                     *";
			Escribir  "*                                                       DIVIERTETE    *";
			Escribir  "*                                                                     *";
			Escribir  "***********************************************************************";
			
			Escribir "Presione cualquier tecla para volver al menu";
			Esperar Tecla;
			
			convinacion_perdida;
			
		3:
			Borrar Pantalla;
			
			Escribir "¿De verdad quiere salir del juego?";
			Escribir " Teclé < s > para abandonar o < n > para continuar jugando";
			Leer opcion;
			
			Si (opcion="s" O opcion ="S") Entonces
				
				Escribir "Gracias por jugar a Convinacion Perdida.";
				Escribir "Para continuar presione cualquier tecla";
				Esperar Tecla;
			FinSi
			
			Si (opcion = "n" o opcion = "N") Entonces
				
				convinacion_perdida;
				
			FinSi
			
	De Otro Modo:
			
			Escribir "La opcion marcada no es valida, redirecionandolo al juego";
			Esperar 1 Segundos;
			convinacion_perdida;
				
	FinSegun
	
FinSubProceso

SubProceso semidados
	
	Definir resultado Como Entero;
	Definir puntoprincipal Como Entero;
	Definir punto Como Entero;
	Definir i Como Entero;
	Definir opcion Como Entero;
	
	Borrar Pantalla;
	
	Escribir "";
	Escribir "                         ____";
	Escribir " __^__                 _(____)_                __^__";
	Escribir "( ___ )____________ooO_(_o__o_)_Ooo___________( ___ )";
	Escribir " | / |                                         | \ |";
	Escribir " | / |         Bienvenidos a Semidados         | \ |";
	Escribir " |___|                                         |___|";
	Escribir "(_____)---------------------------------------(_____) ";
	Escribir "";
	Esperar 1 Segundos;
	
	
	Borrar Pantalla;
	Escribir "";
	Escribir "                         ____";
	Escribir " __^__                 _(____)_                __^__";
	Escribir "( ___ )____________ooO_(_o__o_)_Ooo___________( ___ )";
	Escribir " | / |                                         | \ |";
	Escribir " | / |                 1) Jugar                | \ |";
	Escribir " | / |                 2) Ayuda                | \ |";
	Escribir " | / |                 3) Salir                | \ |";
	Escribir " |___|                                         |___|";
	Escribir "(_____)---------------------------------------(_____) ";
	Escribir "";
	Escribir "        -- Elige la opción que prefieras --  ";
	Leer opcion;
	
	Segun opcion Hacer
		1:
			i<-0;
			
			resultado<- Aleatorio(1,6) +  Aleatorio(1,6);
			
			Borrar Pantalla;
			
			Escribir "                      ____";
			Escribir "                    _(____)_";
			Escribir "             ___ooO_(_o__o_)_Ooo___";
			Escribir " - Pulsa cualquier tecla para tirar los dados -";
			Esperar Tecla;
			
			Escribir "@-----------------------------------------------@";
			Escribir "|       La tirada se esta llevado a cabo        |";
			Escribir "@-----------------------------------------------@";
			
			Para i<-0 Hasta 24 Con Paso 1 Hacer
				
				Escribir "-","*" Sin Saltar;
				Esperar 100 Milisegundos;
			FinPara
			
			Escribir "";
			Escribir "@-----------------------------------------------@";
			Escribir "|    El resultado de la tirada es; ",resultado,"            |";
			Escribir "@-----------------------------------------------@";
			Esperar 2 Segundos;
			
			Si (resultado = 7) o (resultado = 11) Entonces
				
				Borrar Pantalla;
				Escribir "                   \||/";
				Escribir "                   (@ @)";
				Escribir "           @----ooO-(_)-Ooo----------------@";
				Escribir "   ________|        << Enorabuena >>       |_______";
				Escribir "   \       |                               |       /";
				Escribir "    \      |           Has Ganado          |      /";
				Escribir "    /      @_______________________________@      \";
				Escribir "   /__________)                         (__________\";
				Escribir "";
				Escribir "          Presina una tecla para continuar";
				Esperar Tecla;
				semidados;
				
			SiNo
				Si (resultado = 2) o (resultado = 3) o (resultado = 12) Entonces
					
					Borrar Pantalla;
					Escribir "                                 ( ( ( ";
					Escribir "                                  ) ) )";
					Escribir "                                 ( ( ( ";
					Escribir "                                : ___ :";
					Escribir "                               : (> <) :";
					Escribir "           @------------------ooO-(_)-Ooo--@";
					Escribir "   ________|        << GAME OVER >>        |_______";
					Escribir "   \       |                               |       /";
					Escribir "    \      |          Has Perdidio         |      /";
					Escribir "    /      @_______________________________@      \";
					Escribir "   /__________)                         (__________\";
					Escribir "";
					Escribir "          Presina una tecla para continuar";
					Esperar Tecla;
					semidados;
					
				SiNo
					Escribir "@-----------------------------------------------@";
					Escribir "|    Se establece el punto en: ",resultado,"                |";
					Escribir "@-----------------------------------------------@";
					
					puntoprincipal<-resultado;
					
				FinSi
			FinSi
			
			//segunda tirada
			
			
			resultado<- Aleatorio(1,6) +  Aleatorio(1,6);
			
			Borrar Pantalla;
			
			Escribir "                        ____";
			Escribir "                      _(____)_";
			Escribir "   _______________ooO_(_o__o_)_Ooo_______________";
			Escribir " /                                                \";
			Escribir "|  - Pulsa cualquier tecla para tirar los dados -  |";
			Escribir "|                                                  |";
			Escribir "|   El punto esta establecido en: ",puntoprincipal,"                |";
			Escribir " \________________________________________________/";
			Esperar Tecla;
			
			Escribir "@-----------------------------------------------@";
			Escribir "|       La tirada se esta llevado a cabo        |";
			Escribir "@-----------------------------------------------@";
			
			Para i<-0 Hasta 24 Con Paso 1 Hacer
				
				Escribir "-","*" Sin Saltar;
				Esperar 100 Milisegundos;
			FinPara
			
			Escribir "";
			Escribir "@-----------------------------------------------@";
			Escribir "|    El resultado de la tirada es; ",resultado,"            |";
			Escribir "@-----------------------------------------------@";
			Esperar 2 Segundos;
			
			Segun resultado Hacer
				punto:
					Borrar Pantalla;
					Escribir "                   \||/";
					Escribir "                   (@ @)";
					Escribir "           @----ooO-(_)-Ooo----------------@";
					Escribir "   ________|        << Enorabuena >>       |_______";
					Escribir "   \       |                               |       /";
					Escribir "    \      |           Has Ganado          |      /";
					Escribir "    /      @_______________________________@      \";
					Escribir "   /__________)                         (__________\";
					Escribir "";
					Escribir "          Presina una tecla para continuar";
					Esperar Tecla;
					semidados;
				7:
					Borrar Pantalla;
					Escribir "                                 ( ( ( ";
					Escribir "                                  ) ) )";
					Escribir "                                 ( ( ( ";
					Escribir "                                : ___ :";
					Escribir "                               : (> <) :";
					Escribir "           @------------------ooO-(_)-Ooo--@";
					Escribir "   ________|        << GAME OVER >>        |_______";
					Escribir "   \       |                               |       /";
					Escribir "    \      |          Has Perdidio         |      /";
					Escribir "    /      @_______________________________@      \";
					Escribir "   /__________)                         (__________\";
					Escribir "";
					Escribir "          Presina una tecla para continuar";
					Esperar Tecla;
					semidados;
					
				De Otro Modo:
					Repetir
						resultado<- Aleatorio(1,6) +  Aleatorio(1,6);
						
						Borrar Pantalla;
						
						Escribir "                        ____";
						Escribir "                      _(____)_";
						Escribir "   _______________ooO_(_o__o_)_Ooo_______________";
						Escribir " /                                                \";
						Escribir "|  - Pulsa cualquier tecla para tirar los dados -  |";
						Escribir "|                                                  |";
						Escribir "|   El punto esta establecido en: ",puntoprincipal,"                |";
						Escribir " \________________________________________________/";
						Esperar Tecla;
						
						Escribir "@-----------------------------------------------@";
						Escribir "|       La tirada se esta llevado a cabo        |";
						Escribir "@-----------------------------------------------@";
						
						Para i<-0 Hasta 24 Con Paso 1 Hacer
							
							Escribir "-","*" Sin Saltar;
							Esperar 100 Milisegundos;
						FinPara
						
						Escribir "";
						Escribir "@-----------------------------------------------@";
						Escribir "|    El resultado de la tirada es; ",resultado,"            |";
						Escribir "@-----------------------------------------------@";
						Esperar 2 Segundos;
						
					Hasta Que (resultado = puntoprincipal) o (resultado = 7);
					
					Si resultado = punto Entonces
						
						Borrar Pantalla;
						Escribir "                   \||/";
						Escribir "                   (@ @)";
						Escribir "           @----ooO-(_)-Ooo----------------@";
						Escribir "   ________|        << Enorabuena >>       |_______";
						Escribir "   \       |                               |       /";
						Escribir "    \      |           Has Ganado          |      /";
						Escribir "    /      @_______________________________@      \";
						Escribir "   /__________)                         (__________\";
						Escribir "";
						Escribir "          Presina una tecla para continuar";
						Esperar Tecla;
						semidados;
						
					SiNo
						
						Borrar Pantalla;
						Escribir "                                 ( ( ( ";
						Escribir "                                  ) ) )";
						Escribir "                                 ( ( ( ";
						Escribir "                                : ___ :";
						Escribir "                               : (> <) :";
						Escribir "           @------------------ooO-(_)-Ooo--@";
						Escribir "   ________|        << GAME OVER >>        |_______";
						Escribir "   \       |                               |       /";
						Escribir "    \      |          Has Perdidio         |      /";
						Escribir "    /      @_______________________________@      \";
						Escribir "   /__________)                         (__________\";
						Escribir "";
						Escribir "          Presina una tecla para continuar";
						Esperar Tecla;
						semidados;
						
					FinSi
		2:
			Borrar Pantalla;
			Escribir  "***********************************************************************";
			Escribir  "*                                                                     *";
			Escribir  "*                         << Semi Dados >>                            *";
			Escribir  "*                                                                     *";
			Escribir  "*    En este juego de doados como lo de los casinos per mas           *";
			Escribir  "*    simplificado dado a la conplegidad del juego en la realidad,     *";
			Escribir  "*    el juego consiste en que si en la primera tirada se saca un 7    *";
			Escribir  "*    o un 11 ganas directamente si por el contrario sacas un 2 un 3   *";
			Escribir  "*    o un 12 pierdes, en el caso de sacar un número distinto a los    *";
			Escribir  "*    anteriores, se guardara para las siguiente tirada y en ese       *";
			Escribir  "*    caso solo ganaras si sacas el mismo número, en el caso de que    *";
			Escribir  "*    se sacara un 7 se pierde, se seguiran con tiradas sucesivas      *";
			Escribir  "*    hasta que una de las dos circustancias se de primero o sacar     *";
			Escribir  "*    el número acumulado o sacar un 7.                                *";
			Escribir  "*                                                                     *";
			Escribir  "*                                                       DIVIERTETE    *";
			Escribir  "*                                                                     *";
			Escribir  "***********************************************************************";
			
			Escribir "Presione cualquier tecla para volver al menu";
			Esperar Tecla;
			
			semidados;
		3:
			Escribir "Aqui ira salir";
			Esperar Tecla;
		De Otro Modo:
			
			Escribir "La opcion marcada no es valida, redirecionandolo al juego";
			Esperar 1 Segundos;
			semidados;
			
	FinSegun
	
	FinSegun
	
FinSubProceso

SubProceso creditos
	
	Borrar Pantalla;
	
	Escribir  "***********************************************************************";
	Escribir  "*                                                                     *";
	Escribir  "*                  ---------  Creditos  ---------                     *";
	Escribir  "*                                                                     *";
	Escribir  "***********************************************************************";
	Escribir  "*                                                                     *";
	Escribir  "*        Software creado por: Alvaro Gómez Tejada.                    *";
	Escribir  "*                                       (Cresnik).                    *";
	Escribir  "*        Software utilizado: PSeint.                                  *";
	Escribir  "*                                                                     *";
	Escribir  "*      Agradecimiento:                                                *";
	Escribir  "*      Me gustaria expresar mi agradecimiento amis profesores:        *";
	Escribir  "*      Alberto Núñez por dejarme meter mas codigo y con el que        *";
	Escribir  "*      me he reido y aprendido lo genial que es programar y           *";
	Escribir  "*      a Alejandro Moran el cual me inspiro para decidirme a llevar   *";
	Escribir  "*      ha cavo esta gran aventura en la programación.                 *";
	Escribir  "*                                                                     *";
	Escribir  "*                                                                     *";
	Escribir  "*                                                                     *";
	Escribir  "*                                                   \|||/             *";
	Escribir  "*                                                   (o o)             *";
	Escribir "*************************************************-ooO-(_)-Ooo-**********";
	Escribir "";
	Escribir "Para continuar presione cualquier tecla";
	Esperar Tecla;
	
	
FinSubProceso

SubProceso salir
	
	Definir opcion Como Caracter;
	
	Escribir "¿De verdad quiere salir del juego?";
	Escribir " Teclé < s > para abandonar o < n > para continuar jugando";
	Leer opcion;
	
	Si (opcion="s" O opcion ="S") Entonces
		
		Esperar 1 Segundos;
		
	FinSi
	
	Si (opcion = "n" o opcion = "N") Entonces
		
		Escribir "Regresando al menu.";
		Esperar 1 Segundos;
		
	FinSi
	
FinSubProceso

// Como ya hemos terminado de definir los SubProceso vamos a pasar a definir el Proceso principal que es donde se van a llamar a todos los SubProceso anteriormente programados

Proceso Juegos_Reunidos
	
	// Aqui definiremos las variables que afectan al menu del programa
	
	Definir men Como Entero;
	Definir decision Como Caracter;
	
	Repetir
		//Aqui vamos ha hacer una pequeña presentación para  la introducción del jueguo.
		
		Escribir  "***********************************************************************";
		Escribir  "*                                                                     *";
		Escribir  "*               Bienvenidos a << JUEGOS REUNIDOS >>                   *";
		Escribir  "*                                                                     *";
		Escribir  "***********************************************************************";
		
		
		Escribir  "***********************************************************************";
		Escribir  "*                                                                     *";
		Escribir  "*              Selecione el juego al que desea jugar                  *";
		Escribir  "*                                                                     *";
		Escribir  "*                       1) Saber y Ganar.                             *";
		Escribir  "*                       2) Simon Dice.                                *";
		Escribir  "*                       3) Piedra Papel o Tijeras                     *";
		Escribir  "*                       4) Convinación Perdida                        *";
		Escribir  "*                       5) Semidados                                  *";
		Escribir  "*                       6) Cresditos                                  *";
		Escribir  "*                       7) Salir                                      *";
		Escribir  "*                                                                     *";
		Escribir  "***********************************************************************";
		
		// Aqui lo que hacemos con este "leer" es que nos deje seleccionar el juego que queramos 
		
		Leer men;
		
		Segun men Hacer
			1:
				Saber_y_Ganar;
				
			2:
				simon_dice;
				
			3:
				piedra_papel_tijeras;
				
			4:
				convinacion_perdida;
				
			5:
				semidados;
				
			6:
				creditos;
				
			7:
				salir;
				
			De Otro Modo:
				
				Escribir "La opcion marcada no es valida";
				Esperar 1 Segundos;
				
		FinSegun
		
		Borrar Pantalla;
		
		Escribir "¿Quiere elegir otro juego o abandonar el programa?";
		Escribir " Teclé < s > para elegir otro juego o < n > para abandonar";
		Leer decision;
		
	Hasta Que decision = "n";
	
FinProceso	