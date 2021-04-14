// Aqui vamos a crear un SubProceso  que contendrá el primer juego de la colección del programa para ello usaremos la instrucción 
// SubProceso y FinSubProceso.


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
	
	Borrar Pantalla;  // Con "Borrar Pantalla" lo que vamos a conseguir es dejar la pantalla en blanco para que tolo lo que tiene que ver con el menú no aparezca
					// dentro del juego.
	
	// Aquí vamos a poner la pantalla de inicio del juego que hará de intro.
	
	Escribir " __^__                                      __^__";
	Escribir "( ___ )------------------------------------( ___ )";
	Escribir " | / |                                      | \ |";
	Escribir " | / |                                      | \ |";
	Escribir " | / |            Saber y Ganar             | \ |";
	Escribir " | / |                                      | \ |";
	Escribir " |___|                                      |___|";
	Escribir "(_____)------------------------------------(_____) ";
	
	// Con el comando "Esperar" lo que hacemos es que el código se detenga durante el tiempo asignado en este caso 2 segundos.
	
	Esperar 2 Segundos;
	
	// De nuevo utilizamos el comando "borrar" para que simule una nueva pantalla.
	
	Borrar Pantalla;
	
	// Ahora lo que haremos será el menú de inicio del juego "Saber y Ganar" el cual constará de 3 índices de los cuales el usuario eligirá uno por teclado.
	
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
	
	// Este "Leer" lo que hará será guardar el número que marcó el usuario, y el programa por medio de comparaciones sabrá a qué parte del código tiene que ir.
	
	Leer op;
	
	// Si el usuario eligi la opción 1 el programa comparará la variable con los requisitos del "SI" y al ser iguales entrará en el juego propiamente dicho.
	
	Si (op = 1) Entonces
		
		// Ahora lo que haremos será iniciar los acumuladores "corr" y "inc" que son los que se ocuparán de contabilizar las respuestas correctas e incorrectas.
		
		corr<-0;
		inc<-0;
		
		Borrar Pantalla; // Borramos la pantalla para que se limpie y haga el efecto de cambio de pantalla, y pondremos el título de la sección.
		
		Escribir " ********************************";
		Escribir " *   Primera Pregunta           *";
		Escribir " *      - Categoria Geografía   *";
		Escribir " ********************************";
		
		// Con la variable "resp" lo que haremos será conseguir un número al azar para ver cuales de las 10 preguntas de la primera tanda tocará.
		
		resp<-azar(10)+1;
		
		// Mostraremos las preguntas mediante "SI"  y con el número al azar que tenemos en la variable "resp" podemos ver cual es la pregunta que ha tocado.
		
		Si (resp = 1)Entonces
			
			// Ahora le mostramos por pantalla al usuario la pregunta con las posibles soluciones. 
			
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
			
			// "res1" guardará la elección del usuario.
			
			Leer res1;
			
			//  Con este conjunto de "SI , SINO" lo que haremos es programar si el usuario ha acertado o no, si la elección del usuario coincide con el valor 
			// de res en la línea de comando del SI entonces el programa dará por buena la respuesta y en el acumulador "corr" sumará el valor que tenía 
			// "corr" más 1 luego mostrará un mensaje al usuario que le dirá que ha acertado. En el caso de que no coincida la elección del usuario, lo que hará el 
			// programa será que en el acumulador "inc" sumará el valor que tenía más 1, en cualquiera de los dos casos esperará 2 segundos y se borrará la pantalla
			// para que no se aglomere toda la información.
			
			Si (res1 = 1)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
				
				// Con esta opción de que espere 2 segundos y luego borre la pantalla se consigue dé el resultado y que salte automaticamente a la 
				// siguiente pregunta.
				
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lo siento tu respuesta es incorrecta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		// De esta manera concluiría la primera tanda de preguntas y saltaría el programa a la segunda tanda donde volvería a sacar un número por defecto  y a repetir 
		// el mismo proceso hasta completar las 5 rondas de preguntas.
		
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
			
			Leer res2;
			
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
			
			Leer res3;
			
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
			
			Leer res4;
			
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
			
			Leer res5;
			
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
			Escribir " @-------------------------------@";
			Escribir " | ¿Cuántos países tiene África? |";
			Escribir " @-------------------------------@";
			Escribir "";
			Escribir " 1.- 64 países";
			Escribir "";
			Escribir " 2.- 48 países";
			Escribir "";
			Escribir " 3.- 54 países";
			Escribir "";
			Escribir " 4.- 36 países";
			Escribir "";
			
			Leer res6;
			
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
			Escribir " | ¿Cuál es el continente más poblado de la Tierra? |";
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
			
			Leer res7;
			
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
			Escribir " 2.- Canadá";
			Escribir "";
			Escribir " 3.- Rusia";
			Escribir "";
			Escribir " 4.- China";
			Escribir "";
			
			Leer res8;
			
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
			
			Leer res9;
			
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
			
			Leer res10;
			
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
		
		// Aquí hacemos un intermedio entre preguntas, a partir de aquí no comentaré más hasta que haya novedades en el código.
		
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
		Escribir " *      - Categoría Historia    *";
		Escribir " ********************************";
		
		resp<-azar(10)+1;
		
		
		Si (resp = 1)Entonces
			
			Escribir "";
			Escribir " @------------------------------------------------------@";
			Escribir " | ¿Qué civilización se asentó en las orillas del Nilo? |";
			Escribir " @------------------------------------------------------@";
			Escribir "";
			Escribir " 1.- Egipcia";
			Escribir "";
			Escribir " 2.- Mesopotámica";
			Escribir "";
			Escribir " 3.- Griega";
			Escribir "";
			Escribir " 4.- Romana";
			Escribir "";
			
			Leer res1;
			
			Si (res1 = 1)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "Eureka!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Lástima tu respuesta es incorrecta";
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
			Escribir " 3.- Grecia";
			Escribir "";
			Escribir " 4.- Roma";
			Escribir "";
			
			Leer res2;
			
			Si (res2 = 2)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Eureka!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lástima tu respuesta es incorrecta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			FinSi
		FinSi
		
		Si (resp = 3)Entonces
			
			Escribir "";
			Escribir "@---------------------------------------@";
			Escribir "| ¿Dónde se localizaba el Imperio Inca? |";
			Escribir "@---------------------------------------@";
			Escribir "";
			Escribir " 1.- México";
			Escribir "";
			Escribir " 2.- Honduras";
			Escribir "";
			Escribir " 3.- Perú";
			Escribir "";
			Escribir " 4.- Venezuela";
			Escribir "";
			
			Leer res3;
			
			Si (res3 = 3)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Eureka!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Lástima tu respuesta es incorrecta";
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
			
			Leer res4;
			
			Si (res4 = 4)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " EureKa!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lástima tu respuesta es incorrecta";
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
			
			Leer res5;
			
			Si (res5 = 1)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Eureka!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lástima tu respuesta es incorrecta";
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
			Escribir " 2.- El Paleolitico";
			Escribir "";
			Escribir " 3.- El Jurásico";
			Escribir "";
			Escribir " 4.- El Cretácico";
			Escribir "";
			
			Leer res6;
			
			Si (res6 = 2)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "EureKa!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Lástima tu respuesta es incorrecta";
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
			Escribir " 1.- Con la invención de la máquina a vapor";
			Escribir "";
			Escribir " 2.- Con la finalización de la I Guerra Mundial";
			Escribir "";
			Escribir " 3.- Con la caída del Imperio Romano de Occidente";
			Escribir "";
			Escribir " 4.- Con la coronación de los reyes catolicos";
			Escribir "";
			
			Leer res7;
			
			Si (res7 = 3)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Eureka!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lástima tu respuesta es incorrecta";
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
			Escribir " 1.- Marco Antonio";
			Escribir "";
			Escribir " 2.- Marco Aurelio";
			Escribir "";
			Escribir " 3.- Nerón";
			Escribir "";
			Escribir " 4.- Julio Cesar";
			Escribir "";
			
			Leer res8;
			
			Si (res8 = 4)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir " Eureka!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir " Lástima tu respuesta es incorrecta";
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
				Escribir "Eureka!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Lástima tu respuesta es incorrecta";
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
			Escribir " 1.- La Fiebre Española";
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
				Escribir "Eureka!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Lástima tu respuesta es incorrecta";
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
		Escribir " *      - Categoría Naturaleza  *";
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
			Escribir "2.- Herbivoros";
			Escribir "";
			Escribir "3.- Carnívoros";
			Escribir "";
			Escribir "4.- Veganos";
			Escribir "";
			
			Leer res1;
			
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
			Escribir "1.- Ovíparos";
			Escribir "";
			Escribir "2.- Vivíparos";
			Escribir "";
			Escribir "3.- Metastáticos";
			Escribir "";
			Escribir "4.- Clonativos";
			Escribir "";
			
			Leer res2;
			
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
			Escribir "1.- Anfibios";
			Escribir "";
			Escribir "2.- Reptiles";
			Escribir "";
			Escribir "3.- Mamíferos";
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
			
			Leer res4;
			
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
			Escribir "1.- Fotosíntesis";
			Escribir "";
			Escribir "2.- Nutrición";
			Escribir "";
			Escribir "3.- Digestión";
			Escribir "";
			Escribir "4.- Síntesis";
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
			Escribir "@---------------------------------@";
			Escribir "| ¿Dónde se encuentra el corazón? |";
			Escribir "@---------------------------------@";
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
			Escribir "3.- Con un amperímetro";
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
		Escribir "*      - Categoría Arte        *";
		Escribir "********************************";
		
		resp<-azar(10)+1;
		
		
		Si (resp = 1)Entonces
			
			Escribir "";
			Escribir "@--------------------------------@";
			Escribir "| ¿En qué siglo nació Velázquez? |";
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
			Escribir "| ¿En qué museo está La Mona Lisa? |";
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
			Escribir "| ¿En qué siglo nació Van Gogh? |";
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
			Escribir "| ¿De qué estilo es la catedral Nuestra señora de Notredame? |";
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
			Escribir "| ¿En qué siglo se inició el Renacimiento? |";
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
			Escribir "@-------------------------------------------------------@";
			Escribir "| ¿A qué estilo pertenece < El David > de Miguel Ángel? |";
			Escribir "@-------------------------------------------------------@";
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
			Escribir "| ¿Quién dibujó el cuadro que lleva por nombre < La persistencia de la memoria > |?";
			Escribir "@--------------------------------------------------------------------------------@";
			Escribir "";
			Escribir "1.- Velázquez";
			Escribir "";
			Escribir "2.- Goya";
			Escribir "";
			Escribir "3.- Salvador Dalí";
			Escribir "";
			Escribir "4.- Picasso";
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
			Escribir "| ¿La Piedad es una escultura de? |";
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
		Escribir "*      - Categoría Videojuegos *";
		Escribir "********************************";
		
		resp<-azar(10)+1;
		
		Si (resp = 1)Entonces
			
			Escribir "";
			Escribir "----------------------------------------------";
			Escribir "¿Qué juego fue el primero en salir al mercado?";
			Escribir "----------------------------------------------";
			Escribir "";
			Escribir "1.- Tetris";
			Escribir "";
			Escribir "2.- Pong";
			Escribir "";
			Escribir "3.- Pac-Man";
			Escribir "";
			Escribir "4.- Donkey Kong";
			Escribir "";
			
			Leer res1;
			
			Si (res1 = 3)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Upss, tu respuesta es incorrecta";
				Esperar Tecla;
				
				Borrar Pantalla;
				
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
			
			Leer res2;
			
			Si (res2 = 2)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Upss, tu respuesta es incorrecta";
				Esperar Tecla;
				
				Borrar Pantalla;
				
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
			
			Leer res3;
			
			Si (res3 = 3)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Upss, tu respuesta es incorrecta";
				Esperar Tecla;
				
				Borrar Pantalla;
				
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
			
			Leer res4;
			
			Si (res4 = 4)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Upss, tu respuesta es incorrecta";
				Esperar Tecla;
				
				Borrar Pantalla;
				
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
			
			Leer res5;
			
			Si (res5 = 1)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Upss, tu respuesta es incorrecta";
				Esperar Tecla;
				
				Borrar Pantalla;
				
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
			
			Leer res6;
			
			Si (res6 = 2)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Upss, tu respuesta es incorrecta";
				Esperar Tecla;
				
				Borrar Pantalla;
				
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
			
			Leer res7;
			
			Si (res7 = 3)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Upss, tu respuesta es incorrecta";
				Esperar Tecla;
				
				Borrar Pantalla;
				
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
			
			Leer res8;
			
			Si (res8 = 4)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Upss, tu respuesta es incorrecta";
				Esperar Tecla;
				
				Borrar Pantalla;
				
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
			
			Leer res9;
			
			Si (res9 = 1)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Upss, tu respuesta es incorrecta";
				Esperar Tecla;
				
				Borrar Pantalla;
				
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
			
			Leer res10;
			
			Si (res10 = 2)Entonces
				
				corr<-corr +1;
				Escribir "";
				Escribir "En el clavo!!! tu respuesta es correcta";
				Esperar 2 Segundos;
				
				Borrar Pantalla;
				
			Sino inc<-inc +1;
				
				Escribir "";
				Escribir "Upss, tu respuesta es incorrecta";
				Esperar Tecla;
				
				Borrar Pantalla;
				
			FinSi
		FinSi 
		
		Escribir "  __^__                                      __^__";
		Escribir " ( ___ )------------------------------------( ___ )";
		Escribir "  | / |                                      | \ |";
		Escribir "  | / |   Presiona ENTER para conocer tus    | \ |";
		Escribir "  | / |         resultados finales           | \ |";
		Escribir "  |___|                                      |___|";
		Escribir " (_____)------------------------------------(_____) ";
		Esperar Tecla;
		
		Leer cont;
		
		// En la variable "porc" guardaremos el valor de la operación de hayar el tanto porciento de aciertos.
		
		porc<-(corr/5) *100;
		
		Borrar Pantalla;
		
		// Aqui mostraremos los valores de las variables "corr, inc y porc" que representan los resultados de las respuestas correctas, respuestas incorrectas, 
		// y el porcentaje de aciertos.
		
		Escribir "*****************************************************************";
		Escribir "*************************** RESULTADOS **************************";
		Escribir "*****************************************************************";
		Escribir "*                                                               *";
		Escribir "*  - Respuestas correctas: ",corr,".                                   *";
		Escribir "*  - Respuestas incorrectas: ",inc, ".                                 *";
		Escribir "*  - Respondiste correctamente, el ", porc, "% de las preguntas.         *";
		Escribir "*                                                               *";
		Escribir "*****************************************************************";
		
		Escribir "";
		
		Escribir "Presione cualquier tecla para volver al menu";
		
		Esperar Tecla;
		
		// Ahora lo que haremos será volver a llamar al SubProceso "saber_y_ganar" para que reinicie el juego y así volvamos al menú de inicio del juego.
		
		saber_y_ganar;
		
	FinSi
	
	// Si la opción elegida en el menú del juego es "2" nos mandará a la sección de ayuda la cual nos dará una breve descripción del juego.
	
	Si (op = 2) Entonces
		
		Borrar Pantalla;
		
		Escribir  "***********************************************************************";
		Escribir  "*                                                                     *";
		Escribir  "*                     << Preguntas y Respuestas >>                    *";
		Escribir  "*                                                                     *";
		Escribir  "*     Este juego consiste en que el ordenador te hará un grupo de     *";
		Escribir  "*     cinco preguntas y las valorará en correctas e incorrectas,      *";
		Escribir  "*     una vez hayas contestado a todas las preguntas te dará tu       *";
		Escribir  "*     resultado que consistirá en número de aciertos, número de       *";
		Escribir  "*     fallos y el tanto porciento de tus aciertos.                    *";
		Escribir  "*                                                                     *";
		Escribir  "*                                                       DIVIÉRTETE    *";
		Escribir  "*                                                                     *";
		Escribir  "***********************************************************************";
		Escribir "";
		Escribir "              Presione cualquier tecla para volver al menú";
		
		// El comando "Esperar Tecla" lo que hace es detener la ejecución del código hasta que el usuario presiona cualquier tecla, una vez presionada volveremos a
		// llamar al subproceso "saber_y_ganar para volver al menú".
		
		Esperar Tecla;
		
		saber_y_ganar;
		
	FinSi
	
	// Si la opcion elegida en el menu del juego es "3" nos mandará a la sección Salir, la cual nos dará la opción de salir del juego o de seguir jugando.
	
	Si (op = 3) Entonces
		
		// Lo que vamos ha hacer es asegurarnos de que el usuario quiere de verdad salir del programa. 
		
		Escribir "¿De verdad quiere salir del juego?";
		Escribir " Teclé < s > para abandonar o < n > para continuar jugando";
		Leer opcion;
		
		// En este "SI" le asisgnamos dos posibles soluciones, "S" mayúscula o "s" minúscula y cualquiera de las dos sería correcta
		// para que la condición se cumpla con lo cual una vez se ejecute saldrá del SubProceso.
		
		Si (opcion="s" O opcion ="S") Entonces
			
			Escribir "Gracias por jugar a Saber y Ganar.";
			Escribir "Para continuar presione cualquier tecla";
			Esperar Tecla;
		FinSi
		
		// Aquí es igual que en el caso anterior pero con "N" o "n", cuando se ejecute el código llamará al SubProceso Saber_y_Ganar 
		
		Si (opcion = "n" o opcion = "N") Entonces
			
			saber_y_ganar;
			
		FinSi
		
	FinSi
	
	
FinSubProceso

// Y hasta aqui llega el primer juego de la colección.

SubProceso simon_dice
	
	// Aqui definimos las variables.
	
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
	
	// Después de leer la variable "opcionsimon" según sea su valor irá a una parte de la esctructura "segun".
	
	Segun opcionsimon Hacer
		
			// Esta estructura "segun" lo que va ha hacer es dar la dificultad al programa, dado a que cada apartado del "segun" el algoritmo que dá el número 
			// aleatorio y la suma de éste con el número de la jugada anterior cambia, como también cambia el tiempo que muestra el número a memorizar.
		
		1:
			Escribir " __^__                                      __^__";
			Escribir "( ___ )------------------------------------( ___ )";
			Escribir " | / |                                      | \ |";
			Escribir " | / |          1) Fácil                    | \ |";
			Escribir " | / |          2) Difícil                  | \ |";
			Escribir " | / |          3) Pesadilla                | \ |";
			Escribir " | / |          4) No apto para -18         | \ |";
			Escribir " |___|                                      |___|";
			Escribir "(_____)------------------------------------(_____) ";
			Escribir "";
			Escribir "        -- Elige la opción que prefieras --  ";
			Leer opcionsimon;
			
			Segun opcionsimon Hacer
				
				1:
					// Como en el juego anterior en la posición 1 tenemos el programa completo, 
					// lo primero que hacemos es abrir un "repetir" para que haya un bucle y siempre el programa nos esté dando el reto de memorizar.
					
					Repetir
						
						// Ahora esperará un segundo para borrar la pantalla y comenzará el algoritmo.
						
						Esperar 1 Segundos;
						Borrar Pantalla;
						
						// Ahora al acumulador "numdado" le vamos ha hacer que cada vez que pase el bucle sume un número aleatorio entre 1 y 25 ambos 
						// inclusibe al número que vale "numdado".
						
						numdado<-numdado+Aleatorio(1,25);
						
						// Ahora mostraremos por pantalla el número de la variable "numdado" para que vea el usuario el número que luego tendrá que marcar.
						
						Escribir " __^__                                      __^__";
						Escribir "( ___ )------------------------------------( ___ )";
						Escribir " | / |                                      | \ |";
						Escribir " | / |                                      | \ |";
						Escribir "             Simon dice:", numdado;
						Escribir " | / |                                      | \ |";
						Escribir " |___|                                      |___|";
						Escribir "(_____)------------------------------------(_____) ";
						
						// Ahora le daremos parte de la dificultad al juego y es que según vayan aumentando el número de dígitos el tiempo será más ajustado
						// para poder memorizarlo.
						
						// Con esta ristra de "si" encadenados lo que hacemos es que se mida el número de dígitos que muestra el programa y dependiendo 
						// de la cantidad de dígitos mostrados dará un tiempo en concreto para memorizar.
						
						Si (num1 > 0) o (num1 >= 100) Entonces
							Esperar 2 Segundos;
							
							Si (num1 >= 101) o (num1 >= 1000) Entonces
								Esperar 3 Segundos;
								
								Si (num1 >= 1001) o (num1 >= 100000) Entonces
									Esperar 4 Segundos;
									
									Si (num1 >= 100001) o (num1 >= 100000) Entonces
										Esperar 5 Segundos;
										
										Si (num1 >= 100001) o (num1 >= 10000000) Entonces
											Esperar 6 Segundos;
											
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
						
						Borrar Pantalla;
						
						// Ahora le pediremos por pantalla al usuario que nos marque el número que ha facilitado el ordenador con la variable "numdado".
						
						Escribir " __^__                                      __^__";
						Escribir "( ___ )------------------------------------( ___ )";
						Escribir " | / |                                      | \ |";
						Escribir " | / |                                      | \ |";
						Escribir " | / |       Repite la secuencia dada       | \ |";
						Escribir " | / |                                      | \ |";
						Escribir " |___|                                      |___|";
						Escribir "(_____)------------------------------------(_____) ";
						
						// La contestación del usuario la guardaremos en la variable "resusuario".
						
						Leer resusuario;
						
						// Si la respuesta de usuario es igual al número que nos da el ordenador nos dará el mensaje de que hemos acertado y de los 
						// puntos acumulados.
						
						Si resusuario=numdado Entonces
							
							Borrar Pantalla;
							Escribir " __^__                                      __^__";
							Escribir "( ___ )------------------------------------( ___ )";
							Escribir " | / |                                      | \ |";
							Escribir " | / |   Has acertado simon está contento   | \ |";
							
							// Dentro del mensaje de que hemos acertado creamos otro acumulador que llamaremos "score" y por cada vez que pasemos por el 
							// bucle y acertemos nos sumará 4 puntos. 
							
							score<-score + 4;
							Escribir " | / |         Tu puntuación es de:         | \ |";
							
							// Una vez iniciado el contador mostraremos el valor para decirle al usuario los puntos que lleva acumulados.
							
							Escribir "                ", score, " PUNTOS";
							Escribir " |___|                                      |___|";
							Escribir "(_____)------------------------------------(_____) ";
							
							// El mensaje que muestra sólo estará visible durante 2 segundos.
							
							Esperar 2 Segundos;
							
						SiNo
							
							// En el caso de que falle el usuario nos saldrá el siguiente cuadro que nos dice que hemos perdido y nos mostrará el valor 
							// de la variable "score" que son los puntos acumulados.
							
							Escribir "@---------------------------------------------------------@";
							Escribir "|                                                         |";
							Escribir "|                  Lo siento has perdido                  |";
							Escribir "|                      ¡ GAME OVER !                      |";
							Escribir "|                                                         |";
							Escribir "      - Tu puntuación Final ha sido de; ", score, " PUNTOS  ";
							Escribir "|                                                         |";
							Escribir "|            *Presione un tecla para continuar*           |";
							Escribir "|                                                         |";
							Escribir "@---------------------------------------------------------@";
							
							Esperar Tecla;
							
							// Después de pulsar una tecla el programa nos redirigirá al inicio llamando de nuevo al SubProceso mediante su nombre.
							
							simon_dice;
							
						FinSi
						
						// Todo este Proceso seguirá en funcionamiento hasta que el usuario se equivoque en dar el resultado que el ordenador dice mediante 
						// la comparativa de variables, en este caso serán "resusuario y numdado"
						
					Hasta Que resusuario <> numdado
					
					
				2:
					
					Repetir
						
						//Ahora esperará un segundo para borrar la pantalla comenzará el algoritmo.
						
						Esperar 1 Segundos;
						Borrar Pantalla;
						
						// Ahora al acumulador "numdado" le vamos ha hacer que cada vez que pase el bucle sume un número aleatorio entre 1 y 50, ambos incluidos
						// al número que vale "numdado", en este caso, el número aleatorio tendrá 25 números más para que así la cadena de números aumente 
						// más rapi doy sea más difícil de memorizar.
						
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
						
						// Ahora le pediremos por pantalla al usuario que nos marque el número que ha facilitado el ordenador con la variable "numdado"
						
						Escribir " __^__                                      __^__";
						Escribir "( ___ )------------------------------------( ___ )";
						Escribir " | / |                                      | \ |";
						Escribir " | / |                                      | \ |";
						Escribir " | / |       Repite la secuencia dada       | \ |";
						Escribir " | / |                                      | \ |";
						Escribir " |___|                                      |___|";
						Escribir "(_____)------------------------------------(_____) ";
						
						// La contestación del usuario la guardaremos en la variable "resusuario".
						
						Leer resusuario;
						
						// Si la respuesta de usuario es igual al número que nos da el ordenador nos dará el mensaje de que hemos acertado y que 
						// los puntos acumulados.
						
						Si resusuario=num2 Entonces
							
							Borrar Pantalla;
							Escribir " __^__                                      __^__";
							Escribir "( ___ )------------------------------------( ___ )";
							Escribir " | / |                                      | \ |";
							Escribir " | / |   Has acertado simon está contento   | \ |";
							
							score<-score + 4;
							
							Escribir " | / |         Tu puntuación es de:         | \ |";
							Escribir "                ", score, " PUNTOS";
							Escribir " |___|                                      |___|";
							Escribir "(_____)------------------------------------(_____) ";
							
							
							Esperar 2 Segundos;
							
						SiNo
							
							Escribir "@---------------------------------------------------------@";
							Escribir "|                                                         |";
							Escribir "|                  Lo siento has perdido                  |";
							Escribir "|                      ¡ GAME OVER !                      |";
							Escribir "|                                                         |";
							Escribir "      - Tu puntuación Final ha sido de: ", score, " PUNTOS  ";
							Escribir "|                                                         |";
							Escribir "         - La respuesta correcta es: ", num2;
							Escribir "|                                                         |";
							Escribir "|            *Presione un tecla para continuar*           |";
							Escribir "|                                                         |";
							Escribir "@---------------------------------------------------------@";
							
							Esperar Tecla;
							
							simon_dice;
							
						FinSi
						
					Hasta Que resusuario <> num2
					
					
				3:
					
					Repetir
						
						Esperar 1 Segundos;
						Borrar Pantalla;
						
						// Ahora al acumulador "numdado" le vamos ha hacer que cada vez que pase el bucle sume un número aleatorio entre 1 y 75 ambos incluidos
						// al número que vale "numdado", en este caso el numero aleatorio tendrá 50 números más para que así la cadena de números aumente 
						// más rápido y sea más difícil de memorizar.
						
						// Ahora comentaré el algoritmo paso a paso para que sea más entendible, en sí lo que hacemos es que en vez de sumar los números de 
						// la jugada anterior, lo que vamos a hacer es que una cadenas de caracteres, es decir, si en la jugada anterior teníamos el número
						// 28 y en la nueva ronda tenemos 56 el programa lo que nos mostrará es el número 2856.
						
						// Dicho por simon en la tirada anterior.
						
						dicho<-num1;
						
						// Número aleatorio en la tirada.
						
						num2<-Aleatorio(1,75);
						
						// Guardamos en "nu2" el número aleatorio hecho texto.
						
						nu2<-ConvertirATexto(num2);
						
						// Guardamos el valor de la jugada anterior en forma de texto.
						
						dichotexto<-ConvertirATexto(dicho);
						
						// Unimos los dos valores hechos texto en "nu1".
						
						nu1<-Concatenar(dichotexto,nu2);
						
						// Guardamos en "num1" el valor de "nu1" hecho número que es el que dirá simon en esta ronda.
						
						num1<-ConvertirANumero(nu1);
						
						
						Escribir " __^__                                      __^__";
						Escribir "( ___ )------------------------------------( ___ )";
						Escribir " | / |                                      | \ |";
						Escribir " | / |                                      | \ |";
						Escribir "             Simon dice:", num1;
						Escribir " | / |                                      | \ |";
						Escribir " |___|                                      |___|";
						Escribir "(_____)------------------------------------(_____) ";
						
						Si (num1 >= 0) o (num1 >= 100) Entonces
							Esperar 2 Segundos;
							
							Si (num1 >= 101) o (num1 >= 1000) Entonces
								Esperar 3 Segundos;
								
								Si (num1 >= 1001) o (num1 >= 100000) Entonces
									Esperar 4 Segundos;
									
									Si (num1 >= 100001) o (num1 >= 100000) Entonces
										Esperar 5 Segundos;
										
										Si (num1 >= 100001) o (num1 >= 10000000) Entonces
											Esperar 6 Segundos;
											
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
						
						Borrar Pantalla;
						
						Escribir " __^__                                      __^__";
						Escribir "( ___ )------------------------------------( ___ )";
						Escribir " | / |                                      | \ |";
						Escribir " | / |                                      | \ |";
						Escribir " | / |       Repite la secuencia dada       | \ |";
						Escribir " | / |                                      | \ |";
						Escribir " |___|                                      |___|";
						Escribir "(_____)------------------------------------(_____) ";
						
						Leer resusuario;
						
						Si resusuario=num1 Entonces
							
							Borrar Pantalla;
							Escribir " __^__                                      __^__";
							Escribir "( ___ )------------------------------------( ___ )";
							Escribir " | / |                                      | \ |";
							Escribir " | / |   Has acertado simon está contento   | \ |";
							score<-score + 4;
							Escribir " | / |         Tu puntuación es de:         | \ |";
							Escribir "                ", score, " PUNTOS";
							Escribir " |___|                                      |___|";
							Escribir "(_____)------------------------------------(_____) ";
							
							Esperar 2 Segundos;
							
						SiNo
							
							Escribir "@---------------------------------------------------------@";
							Escribir "|                                                         |";
							Escribir "|                  Lo siento has perdido                  |";
							Escribir "|                      ¡ GAME OVER !                      |";
							Escribir "|                                                         |";
							Escribir "      - Tu puntuación Final ha sido de: ", score, " PUNTOS  ";
							Escribir "|                                                         |";
							Escribir "         - La respuesta correcta es: ", num1;
							Escribir "|                                                         |";
							Escribir "|            *Presione un tecla para continuar*           |";
							Escribir "|                                                         |";
							Escribir "@---------------------------------------------------------@";
							
							Esperar Tecla;
							
							simon_dice;
							
						FinSi
						
					Hasta Que resusuario <> num1
					
					
				4:
					Repetir
						
						Esperar 1 Segundos;
						Borrar Pantalla;
						
						// Ahora al acumulador "numdado" le vamos ha hacer que cada vez que pase el bucle sume un número aleatorio entre 1 y 200 ambos 
						// inclusibe al número que vale "numdado", en este caso el número aleatorio tendrá 150 números más para que asi la cadena de números
						// aumente más rapido y sea más difícil de memorizar.
						
						
						dicho<-num1;
						num2<-Aleatorio(1,200);
						nu2<-ConvertirATexto(num2);
						dichotexto<-ConvertirATexto(dicho);
						nu1<-Concatenar(dichotexto,nu2);
						num1<-ConvertirANumero(nu1);
						
						
						Escribir " __^__                                      __^__";
						Escribir "( ___ )------------------------------------( ___ )";
						Escribir " | / |                                      | \ |";
						Escribir " | / |                                      | \ |";
						Escribir "             Simon dice:", num1;
						Escribir " | / |                                      | \ |";
						Escribir " |___|                                      |___|";
						Escribir "(_____)------------------------------------(_____) ";
						
						Si (num1 >= 0) o (num1 >= 100) Entonces
							Esperar 2 Segundos;
							
							Si (num1 >= 101) o (num1 >= 1000) Entonces
								Esperar 3 Segundos;
								
								Si (num1 >= 1001) o (num1 >= 100000) Entonces
									Esperar 4 Segundos;
									
									Si (num1 >= 100001) o (num1 >= 100000) Entonces
										Esperar 5 Segundos;
										
										Si (num1 >= 100001) o (num1 >= 10000000) Entonces
											Esperar 6 Segundos;
											
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
						
						Borrar Pantalla;
						
						Escribir " __^__                                      __^__";
						Escribir "( ___ )------------------------------------( ___ )";
						Escribir " | / |                                      | \ |";
						Escribir " | / |                                      | \ |";
						Escribir " | / |       Repite la secuencia dada       | \ |";
						Escribir " | / |                                      | \ |";
						Escribir " |___|                                      |___|";
						Escribir "(_____)------------------------------------(_____) ";
						
						Leer resusuario;
						
						Si resusuario=num1 Entonces
							
							Borrar Pantalla;
							Escribir " __^__                                      __^__";
							Escribir "( ___ )------------------------------------( ___ )";
							Escribir " | / |                                      | \ |";
							Escribir " | / |   Has acertado simon está contento   | \ |";
							score<-score + 4;
							Escribir " | / |         Tu puntuación es de:         | \ |";
							Escribir "                ", score, " PUNTOS";
							Escribir " |___|                                      |___|";
							Escribir "(_____)------------------------------------(_____) ";
							
							Esperar 2 Segundos;
							
						SiNo
							
							Escribir "@---------------------------------------------------------@";
							Escribir "|                                                         |";
							Escribir "|                  Lo siento has perdido                  |";
							Escribir "|                      ¡ GAME OVER !                      |";
							Escribir "|                                                         |";
							Escribir "      - Tu puntuación Final ha sido de: ", score, " PUNTOS  ";
							Escribir "|                                                         |";
							Escribir "         - La respuesta correcta es: ", num1;
							Escribir "|                                                         |";
							Escribir "|            *Presione un tecla para continuar*           |";
							Escribir "|                                                         |";
							Escribir "@---------------------------------------------------------@";
							
							Esperar Tecla;
							
							simon_dice;
							
						FinSi
						
					Hasta Que resusuario <> num1
					
			FinSegun
			
		2:	
			
			// En la Opcion 2 del programa se encuentra la ayuda es sólo una pantalla de información como en el programa anterior donde 
			// nos da un pequeño resumen de lo que es el juego.
			
			Borrar Pantalla;
			
			Escribir  "***********************************************************************";
			Escribir  "*                                                                     *";
			Escribir  "*                          << Simon Dice >>                           *";
			Escribir  "*                                                                     *";
			Escribir  "*     Este juego consiste en que el ordenador te irá dando una        *";
			Escribir  "*     serie de números, los cuales irán en orden creciente. Todo      *";
			Escribir  "*     trata de ir memorizando el número que sale por pantalla y       *";
			Escribir  "*     darlo en contestación a Simon, si haciertas sigues jugando,     *";
			Escribir  "*     pero si fallas se acaba la partida. Por cada acierto sumarás    *";
			Escribir  "*     puntos.                                                         *";
			Escribir  "*                                                                     *";
			Escribir  "*     ¿A cuántos puntos llegarás?                                     *";
			Escribir  "*                                                                     *";
			Escribir  "*                                                       DIVIÉRTETE    *";
			Escribir  "*                                                                     *";
			Escribir  "***********************************************************************";
			
			// Para poder leer las instrucciones le ponemos un mensaje al usuario, para que cuando termine y quiera, pulsando cualquier tecla pueda seguir.
			// y con "esperar tecla" el código se para hasta que el usuario pulse cualquier tecla.
			
			Escribir "";
			Escribir "           Presione cualquier tecla para volver al menú";
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
			
			// Este opción está destinada para que si lo que teclea el usuario no coincide con ninguna de las opciones anteriores muestre 
			// un mensaje por pantalla y redireccione al inicio del juego.
			
			Escribir "La opción marcada no es válida seleccione de nuevo";
			
			simon_dice;
			
	FinSegun
	
FinSubProceso

SubProceso piedra_papel_tijeras
	
	Borrar Pantalla;
	
	// Aqui definimos las variables.
	
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
	
	// Ahora lo que hacemos es iniciar los contadores que utilizaremos durante el juego.
	
	puntos1<-0;
	puntos2<-0;
	
	// Creamos una pantalla de inicio que estara visble durante 2 segundos.
	
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
	
	// Ahora creamos el menú del juego.
	
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
	
	// Dependiendo lo ingresado por el usuario creamos un "segun" para dirigirnos a las distinatas opciones del programa
	
	Segun opcionppt Hacer
		1:
			// Si la opcion ingresada es un 1 ira directamente al juego y lo primeroque aremos sera crear una variable para que el usuario ingrese el nombre
			// con el que desa jugar.
			
			Escribir "¿Qué nómbre usarás para jugar?";
			
			Leer nombre;
			
			Repetir
				
				// Lo siguiente que se mostrara es el marcador con todo puesto a 0 para que apartir de aqui empiece a contavilizar la partida.
				
				Borrar Pantalla;
				
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
				
				// Una vez empieza el juego nos dara a elegir entre 3 opciones: piedra, papel o tigera y esta la guardaremos en la variable " jugador1".
				
				Escribir " __^__                                      __^__";
				Escribir "( ___ )------------------------------------( ___ )";
				Escribir " | / |                                      | \ |";
				Escribir " | / |               1) Piedra              | \ |";
				Escribir " | / |               2) Papel               | \ |";
				Escribir " | / |               3) Tijera              | \ |";
				Escribir " |___|                                      |___|";
				Escribir "(_____)------------------------------------(_____) ";
				Escribir "";
				Escribir "        -- Elige la opción que prefieras --  ";
				
				Leer jugador1;
				
				// Ahora trasformamos la instruccion en una palabra por medio de "SI" y lo guardamos en la variable "letra1".
				
				Si jugador1=1 Entonces
					
					letra1<-"Piedra";
					
				FinSi
				
				Si jugador1=2 Entonces
					
					letra1<-"Papel";
					
				FinSi
				
				Si jugador1=3 Entonces
					
					letra1<-"Tijera";
					
				FinSi
				
				// Por otro lado tenemos la elección de la maquina que la aremos eligiendo un numero aleatorio comprendido entre 1 y 3 y lo guardaremos en
				// la variable "jugador2".
				
				jugador2<-Aleatorio(1,3);
				
				// Como en el jugador 1 pasamos su elección a una palabras mediante "Si" y lo guardaremos en la variable "letra2".
				
				Si jugador2=1 Entonces
					
					letra2<-"Piedra";
					
				FinSi
				
				Si jugador2=2 Entonces
					
					letra2<-"Papel";
					
				FinSi
				
				Si jugador2=3 Entonces
					
					letra2<-"Tijera";
					
				FinSi
				
				// Una vez que las dos partes ha elegido su opcion a mostrar compararemos los resultados para ver quien es el que ha ganado la ronda, esto
				// lo aremos con "Si" y una seri de condiciones, si se dan las condiciones del primer si entonces el jugador 1 gana.
				
				Si ( jugador1=1 y jugador2=3 ) o ( jugador1=2 y jugador2=1 ) o ( jugador1=3 y jugador2=2 ) Entonces
					
					// Entonces se mostrara el siguiente mensaje donde aprace el nombre del jugador ganador al ser el usuario mostrara el nombre ingresado
					// al principio mediante la variable "nombre" y luego dira por que gana, es decir por medio de las variables "letra1 y letra2" se vera
					// la elección que cada jugador hizo y añadiendo el comentaraio a mostrar "Porque "letra1" gana a "letra2"".
					
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
					Escribir "        *Presione un tecla para continuar*";
					
					Esperar Tecla;
					
					// Una vez pase la ronda se sumara un punto al marcador del usuario.
					
					puntos1<-puntos1+1;
					
				FinSi
				
				Si (( jugador2=1 y jugador1=3 ) o ( jugador2=2 y jugador1=1 ) o ( jugador2=3 y jugador1=2 )) Entonces
					
					// En el caso de gane la CPU el proceso es el mismo que cuando gana el usuario.
					
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
					Escribir "        *Presione un tecla para continuar*";
					
					Esperar Tecla;
					
					// En este caso al ganar la CPU los puntos los sumaremos en la variable de puntos de la CPU "puntos2".
					
					puntos2<-puntos2+1;
					
				FinSi
				
				// Por ultimo tenemos el caso de empate que solo se mostrara que se ha empatado y cual fue la eleccion que hicieron tanto el usuario como la CPU
				// para mostrar lo que sacaron los jugadores usaremos la variable "letra1" ya que da igual usar la del jugador como la de la CPU, en este caso al
				// quedar empate no se sumara puntos a ninguno de los dos jugadores.
				
				Si (( jugador1=1 y jugador2=1 ) o ( jugador1=2 y jugador2=2 ) o ( jugador1=3 y jugador2=3 )) Entonces
					
					Escribir " __^__                                      __^__";
					Escribir "( ___ )------------------------------------( ___ )";
					Escribir " | / |                                      | \ |";
					Escribir " | / |                                      | \ |";
					Escribir " | / |            ¡¡¡ Empate !!!            | \ |";
					Escribir " | / |                                      | \ |";
					Escribir "            Los dos sacasteis ",letra1;
					Escribir " |___|                                      |___|";
					Escribir "(_____)------------------------------------(_____) ";
					Escribir "";
					Escribir "        *Presione un tecla para continuar*";
					
					Esperar Tecla;
					
				FinSi
				
				// Este bucle seguira reiniciando hatas que la partida acabe y eso sera cuando se cumpla que cualquiera de los dos marcadores de los jugadores llegen
				// a la puntuación de 10.
				
			Hasta Que (puntos1==10 o puntos2==10)
			
			// Para terminar la partida haremos un "Si , Sino" para mostrar la pantalla de ganador y lo que ara este si es que si la puntuación del "jugador1"
			// es igual a 10 el jugador 1 gana la partida y lo guardaremos en la variable "ganador", si no, quiere decir que el que gana la partida es la CPU
			// y de igual manera se guardara en la variable "ganador". 
			
			Si (puntos1==10) Entonces
				
				ganador<-nombre;
				
			SiNo
				
				ganador<-"La CPU";
				
			FinSi
			
			// Por ultimo lo que mostraremos en un mensaje diciendo quien es el ganador del juego.
			
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
			
			// Si la eleccion es el número 2 lo que hara es traernos hasta la ayuda que como en juegos anteriores es una descripción del juego y de que trata.
			
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
			
			// Como en los anteriores juegos si marcamos 3 nos manda a la salida del juego por lo que no comentare mas esta sección
			
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
			
			// De otro modo es lo mismo que en los juegos anteriores, si nos equibocamos en digitar la opción que queremos nos mostrara en pantalla el mensaje de que
			// nos hemos equibocado.
			
			Escribir "La opcion marcada no es valida, redirecionandolo al juego";
			Esperar 1 Segundos;
			
			piedra_papel_tijeras;
			
	FinSegun
	
	// Aqui termina el codigo del juego de piedra, papel o tijera.
	
FinSubProceso

SubProceso convinacion_perdida
	
	// Aqui definimos las variable de los menus que vamos ha usar en el juego.
	
	Definir opcioncp Como Entero;	
	Definir dificultad Como Entero;
	Definir opdificultad Como Entero;
	
	Borrar Pantalla;
	
	// Creamos la pantalla de inicio del juego.
	
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
	
	// Creamos el menú del juego como en los juegos anteriores.
	
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
	
	// En este juego creamos una novedad y es la opción de dificultad del juego, dependiendo la opcion el juego sera mas o menos dificil.
	
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
	
	// Guardamos la elección del jugador en la variable "dificultad".
	
	Leer dificultad;
	
	Segun dificultad Hacer
		
			// La dificultad de este juego reside en que dependiendo de la opción que escojamos tendremos mas o menos intentos para poder descifrar la combinación de
			// colores, la primera opción da 10000 intentos lo cual creo que es suficiente como para considerarlo de intentos infinitos, la siguiente dificultad nos 
			// dara 50 opportunidades, la siguiente solo 25 oportunidades, la siguiente 10 oportunidades y por ultimo la forma mas dificil solo nos dara 5 oportunidades.
		
		1:
			opdificultad<-10000;
			
		2:
			opdificultad<-50;
			
		3:
			opdificultad<-25;
			
		4:
			opdificultad<-10;
			
		5:  
			opdificultad<-5;
			
		De Otro Modo:
			
			// Aqui aprovechamos la opción "de otro modo" para que si nos equibocamos en elegir nos dejara volver a elegir.
			
			Escribir "La opcion es incorrecta, elija de nuevo.";
			
			Leer dificultad;
			
	FinSegun
	
	
	
	Segun opcioncp Hacer
		
		1:
			// Aqui definiremos las variables del juego
			
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
				
				// Iniciamos el contador para las vueltas del bucle y programar la dificultad
				
				cvueltas<-0;
				
				// Creamos un "para" para que genere aleatoriamente la convinación de colores que posteriormente tendra que descifrar el usuario. 
				
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
					
					// Ahora dependiendo de la elección al azar que se alla echo se rellena las posiciondes de la combinación.
					
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
					
					// Generamos un repetir para los intentos de adibinar la combinación.
					
					Repetir
						
						// colocamos el contador de veces que se repite el bucle con lo que cada vez que se repita a la variable "cvueltas" se le sumara 1 al valor que
						// tenia la variable de la vuelta anterior.
						
						cvueltas<- cvueltas + 1;
						
						Borrar Pantalla;
						
						Repetir
							
							// Generamos el mennú con las opciones con sus equibalencias.
							
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
							
							// Creamos un para rellenaremos la combinación del usuario para luego compararla con la de la CPU .
							
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
									
									// En este leer es donde se guardara el color seleccionado si con la cadena de "SI"  determina que esta bien escrito.
									
									Leer CO;
									Error<-Falso;
									
									// Con los "Si" de acontinuación comprovaremos si lo que hemos digitado esta bien escrito o no 
									
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
								
								// Si se determina que esta bien lo que que hay en la variable "CO" lo guardaremos en su variable definitiva que es la posicion que
								// toque en la variables "c1, c2, c3, c4".
								
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
						
						// Una vez terminado de seleccionar la configurar creamos una pantalla donde nos muestre la combinación establecida y decidir si es la que
						//  queremos o deseamos cambiarla.
						
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
						
						// Mostramos el mensaje para definir si la elección que se ha echo es la correcta y respuesta la guardaremos en la variable "confirmacioncolor"
						
						Escribir "Esta bien la convinacion de colores (Si / No)";
						
						Leer confirmacioncolor;
						
						//  Para salir del bucle compararemos la variable "confirmacioncolor" con las posibles posivilidades.
						
					Hasta Que (confirmacioncolor = "si") o (confirmacioncolor = "SI") o (confirmacioncolor = "Si") o (confirmacioncolor = "sI") o (confirmacioncolor = "s") o (confirmacioncolor = "S") o (confirmacioncolor = "n") o (confirmacioncolor = "N")
					
						// Iniciamos los contadores para indicar los aciertos completos o parciales, los completos son los que aciertas posición y color y los casiaciertos 
						// son los que o has acertsado el color o la posición.
						
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
						
						Si (posi3 = c3) Entonces
							
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
						
						// Si conseguimos acertar los cuatro colores en sus posiciones correctas nos mostrara el mensaje de que hemos ganado.
						
						Si aciertos = 4 Entonces
							
							Borrar Pantalla;
							Escribir "           @-------------------------------@";
							Escribir "   ________|        << Enorabuena >>       |_______";
							Escribir "   \       |                               |       /";
							Escribir "    \      |  Descifrastes la convinación  |      /";
							Escribir "    /      @_______________________________@      \";
							Escribir "   /__________)                         (__________\";
							
						SiNo
							
							// Si no consigues acertar la combinación nos mostrara un cuadro informativo donde nos diga los aciertos de color y posición 
							// de los casiaciertos y la cantidad de intentos.
							
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
						
						// Cada vez que hagamos un ciclo del juego compara las variables "opdificultad" y "cvueltas" y si no son iguales el bucle sigue, pero si las dos variables
						// se igualan nos mostrara el mensaje de game over por que se nos habran acabado los intentos, tambien nos mostrara la combinación que tendriamos que haber
						// puesto para poder ganar.
						
						Si (opdificultad = cvueltas) Entonces
								
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
			
			// Como en los juegos anteriores la opcion 2 es la ayuda por lo que nos mostrara en que consiste el juego.
			
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
			// Aqui tenemos las opciones de salida
			
			Definir decision Como Caracter;
			
			Borrar Pantalla;
			
			Escribir "¿De verdad quiere salir del juego?";
			Escribir " Teclé < s > para abandonar o < n > para continuar jugando";
			Leer decision;
			
			Si (decision = "s" O decision = "S") Entonces
				
				Escribir "Gracias por jugar a Convinacion Perdida.";
				Escribir "Para continuar presione cualquier tecla";
				Esperar Tecla;
				
			FinSi
			
			Si (decision = "n" o decision = "N") Entonces
				
				convinacion_perdida;
				
			FinSi
			
	De Otro Modo:
			
			Escribir "La opcion marcada no es valida, redirecionandolo al juego";
			Esperar 1 Segundos;
			convinacion_perdida;
				
	FinSegun
	
FinSubProceso

// Aqui termina el el juego de combinación perdida.

SubProceso semidados
	
	// Aqui definiremos las variables del menú del juego.
	
	Definir resultado Como Entero;
	Definir puntoprincipal Como Entero;
	Definir punto Como Entero;
	Definir i Como Entero;
	Definir op Como Entero;
	
	Borrar Pantalla;
	
	// Aqui ponemos la pantalla de inicio del juego.
	
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
	
	// Aqui ponemos el menú de opciones del juego.
	
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
	Leer op;
	
	Segun op Hacer
		
		// Segun la opcion elegida y guardada en la variable "op" iremos a un punto u otro del juego.
		
		1:
			// Aqui inicializamos el contador.
			
			i<-0;
			
			// El en la variable "resultado" guardaremos el resultado de la suma de los dos dados esto lo aremos con dos números elegidos aleatoriamente entre 
			// números del 1 al 6
			
			resultado<- Aleatorio(1,6) +  Aleatorio(1,6);
			
			Borrar Pantalla;
			
			// Aqui programaremos una pantalla donde nos diga que estamos tirando los dados y que la operación se está llevando a cabo.
			
			Escribir "                      ____";
			Escribir "                    _(____)_";
			Escribir "             ___ooO_(_o__o_)_Ooo___";
			Escribir " - Pulsa cualquier tecla para tirar los dados -";
			Esperar Tecla;
			
			Escribir "@-----------------------------------------------@";
			Escribir "|       La tirada se esta llevado a cabo        |";
			Escribir "@-----------------------------------------------@";
			
			// Con este para lo que hacemos es que se ejecute un escribir sin saltar la linea de escritura que simulara la barra de prgreso de las istalaciones de Windows.
			
			Para i<-0 Hasta 24 Con Paso 1 Hacer
				
				Escribir "-","*" Sin Saltar;
				Esperar 100 Milisegundos;
			FinPara
			
			// En el siguiente recuadro nos mostrara el resultado  de los dados.
			
			Escribir "";
			Escribir "@-----------------------------------------------@";
			Escribir "|    El resultado de la tirada es; ",resultado,"            |";
			Escribir "@-----------------------------------------------@";
			Esperar 2 Segundos;
			
			// Ahora compararemos los resultados si es igual a 7 o a 11 en la primera tirada entonces el jugador gana y nos lo muestra por pantalla.
			
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
				
				// En caso de ganar cuando pulsemos una tecla nos redirigira al comienzo del juego.
				
				semidados;
				
			SiNo
				
				// Pero si el resultado optenido es 2,3 o 12 el jugador pierde y nos lo muestra por pantalla.
				
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
					
					// Cuando pulsemos una tecla nos redirigira al comienzo del juego.
					
					semidados;
					
				SiNo
					
					// En caso de que el resultado sea distinto a los otros dos casos se guardara en la variable "puntoprincipal".
					
					Escribir "@-----------------------------------------------@";
					Escribir "|    Se establece el punto en: ",resultado,"                |";
					Escribir "@-----------------------------------------------@";
					
					puntoprincipal<-resultado;
					
					// Al no ganar ni perder sigue el juego con una nueva tirada.
					
				FinSi
			FinSi
			
			// En la segunda tirada se vuelve a tirar los dados y de nuevo volvemos a guardar el resultado en la variable "resultado".
			
			
			resultado<- Aleatorio(1,6) +  Aleatorio(1,6);
			
			Borrar Pantalla;
			
			// La diferencia con la primera tirada es que ahora tenemos que igualar el número que se establecio en la variable "puntoprincipal".
			
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
			
			// De nuevo se tiran los dados y guardamos el valor en "resultado".
			
			Para i<-0 Hasta 24 Con Paso 1 Hacer
				
				Escribir "-","*" Sin Saltar;
				Esperar 100 Milisegundos;
				
			FinPara
			
			Escribir "";
			Escribir "@-----------------------------------------------@";
			Escribir "|    El resultado de la tirada es; ",resultado,"            |";
			Escribir "@-----------------------------------------------@";
			Esperar 2 Segundos;
			
			// Y comparamos si "resultado" es igual "puntoprincipal" ganas.
			
			Si resultado=puntoprincipal Entonces
				
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
				
			FinSi
			
			Borrar Pantalla;
			
			// Si "resultado" es igual a 7 pierdes.
			
			Si resultado = 7 Entonces
				
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
			
			// Aqui si no es igual empezara a hacer tiradas sucesivas hasta que coincida el "resultado" con "puntoprincipal" o se saque en la tirada un 7.
			
			Si resultado <> puntoprincipal Entonces
				
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
					
					Si resultado = puntoprincipal Entonces
						
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
						
					FinSi
					
					Si resultado = 7 Entonces
						
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
					
				Hasta Que (resultado = puntoprincipal) o (resultado = 7);
				
			FinSi
			
		2:
			
			// Como en los juegos anteriores la ayuda es la descripción y como se juega.
			
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
			
			Escribir "          Presione cualquier tecla para volver al menu";
			Esperar Tecla;
			
			semidados;
		3:
			// Aqui tenemos las opciones de salida
			
			Borrar Pantalla;
			
			Escribir "¿De verdad quiere salir del juego?";
			Escribir " Teclé < s > para abandonar o < n > para continuar jugando";
			Leer opcion;
			
			Si (opcion="s" O opcion ="S") Entonces
				
				Escribir "Gracias por jugar a Semidados.";
				Escribir "Para continuar presione cualquier tecla";
				Esperar Tecla;
			FinSi
			
			Si (opcion = "n" o opcion = "N") Entonces
				
				semidados;
				
			FinSi
			
		De Otro Modo:
			
			Escribir "La opcion marcada no es valida, redirecionandolo al juego";
			Esperar 1 Segundos;
			
			semidados;
			
	FinSegun
	
FinSubProceso

// Y aqui termina el ultimo juego de la colección de juegos reunidos.

SubProceso creditos
	
	// En este subproceso lo que he querido hacer es como en todos los juegos pues poner unos creditos y agradecimientos que solo es escribir por pantalla.
	
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

// Aqui acaba el subproceso creditos

SubProceso salir
	
	// En este subproceso he creado un menú para hacer que el programa se termine, aun asi hay una opcion para polder volver al menú de selección de juegos.
	
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

// Aqui termina el subproceso salir.

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
		Escribir  "*                       4) Combinación Perdida                        *";
		Escribir  "*                       5) Semidados                                  *";
		Escribir  "*                       6) Cresditos                                  *";
		Escribir  "*                       7) Salir                                      *";
		Escribir  "*                                                                     *";
		Escribir  "***********************************************************************";
		
		// Aqui lo que hacemos con este "leer" es que nos deje seleccionar el juego que queramos guardando lo que tecle el usuario lo guardaremos en la variable
		// "men"
		
		Leer men;
		
		// con lo giardado en la variable "men" compararemos con las opciones que hay
		
		Segun men Hacer
			
			// Cada opción nos lleva a un juego o apartado del programa.
			
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
				
				Escribir "La opcion marcada no es valida, vuelva a elegir";
				Esperar 1 Segundos;
				
		FinSegun
		
		Borrar Pantalla;
		
		Escribir "¿Quiere elegir otro juego o abandonar el programa?";
		Escribir " Teclé < s > para elegir otro juego o < n > para abandonar";
		
		Leer decision;
		
	Hasta Que decision = "n";
	
FinProceso	