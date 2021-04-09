// Aqui vamos a crear un SubProceso  que contendra el primer juego de la colección del programa para ello usaremos la instrucción 
// SubProceso y FinSubProceso


SubProceso Saber_y_Ganar () 
	
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
	
	
	// Ahora lo que aremos sera el menu de inicio del jugo Saber y ganar el cual constara de 3 indices de los cuales el usuario eligira uno por teclado
	
	Escribir  "***********************************************************************";
	Escribir  "*                                                                     *";
	Escribir  "*                         << Saber y Ganar >>                         *";
	Escribir  "*                                                                     *";
	Escribir  "*                              1) Jugar                               *";
	Escribir  "*                                                                     *";
	Escribir  "*                              2) Ayuda                               *";
	Escribir  "*                                                                     *";
	Escribir  "*                              3) Salir                               *";
	Escribir  "*                                                                     *";
	Escribir  "***********************************************************************";
	
	// Este leer lo que hara sera guardar el número que marco el usuario, y el programa por medio de comparaciones sabra a que parte del codigo tiene que ir.
	
	Leer op;
	
	// Si el usuario eligio la opcion 1 el programa comparara la variable con los requisitos del "SI" y al ser iguales entrara en el juego propiamente dicho
	
	Si (op = 1) Entonces
		
		// Ahora lo que aremos sera iniciar los acumuladores "corr" y "inc" que son los que se ocuparan para de contavilizar las respuestas correctas e incorrectas
		
		corr<-0;
		inc<-0;
		
		Borrar Pantalla; // Borramos la pantalla para que se vea limpia la pantalla y ara el efecto de cambio de pantalla, y pondremos el titulo de la sección
		
		Escribir "********************************";
		Escribir "*   Primera Pregunta           *";
		Escribir "*      - Categoria Geografía   *";
		Escribir "********************************";
		
		// Con la variable "resp" lo que aremos sera conseguir un número al azar para ver cuales de las 10 preguntas de la primera tanda tocara.
		
		resp<-azar(10)+1;
		
		// Mostraremos las preguntas mediante "SI"  y con el numero al azar que tenemos en la variable "resp" podemos ver cual es la pregunta que a tocado
		
		Si (resp = 1)Entonces
			
			// Ahora le mostramos por pantalla al usuario la pregunta con las posibles soluciones 
			
			Escribir "";
			Escribir "-------------------------------";
			Escribir "¿Cuál es la capital de Turquía?";
			Escribir "-------------------------------";
			Escribir "";
			Escribir "1.- Ankara";
			Escribir "";
			Escribir "2.- Kingston";
			Escribir "";
			Escribir "3.- Tokio";
			Escribir "";
			Escribir "4.- Dublin";
			Escribir "";
			
			// "res1" guardara la elecion del usuario
			
			leer res1;
			
			//  Con este conjunto de "SI , SINO" lo que aremos es programar si el usuario ha acertado o no, si la elcción del usuario coincide con el valor 
			// de res en la linea de comando del SI entonces el programa dara por buena la respuesta y en el acumulador "corr" sumara el valor que tenia 
			// corr mas 1 luego mostrara un mensaje al usuario que le dira que ha acertado. En el caso de que no coincida la elección del usuario, lo que hara el 
			// el programa sera que en el acumulador "inc" sumara el valor que tenia mas 1.
			
			Si (res1 = 1)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Genial, tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lo siento tu respuesta es incorrecta";
			FinSi
		FinSi
		
		// De esta manera concluiria la primera tanda de preguntas y saltaria el programa a la segunda tanda donde volveria a sacar un número por defecto  y a repetir 
		// el mismo proceso hata completar las 5 rondas de preguntas.
		
		Si (resp = 2)Entonces
			Escribir "";
			Escribir "------------------------------------------";
			Escribir "¿Cuál es el nombre del desierto de México?";
			Escribir "------------------------------------------";
			Escribir "";
			Escribir "1.- Sahara";
			Escribir "";
			Escribir "2.- Gobi";
			Escribir "";
			Escribir "3.- Ankara";
			Escribir "";
			Escribir "4.- Sonora";
			Escribir "";
			leer res2;
			Si (res2 = 4)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lo siento tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 3)Entonces
			Escribir "";
			Escribir "-----------------------------------";
			Escribir "¿En qué isla italiana está Palermo?";
			Escribir "-----------------------------------";
			Escribir "";
			Escribir "1.- G.Canarias";
			Escribir "";
			Escribir "2.- Sicilia";
			Escribir "";
			Escribir "3.- Bora Bora";
			Escribir "";
			Escribir "4.- Mauricio";
			Escribir "";
			leer res3;
			Si (res3 = 2)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lo siento tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 4)Entonces
			Escribir "";
			Escribir "----------------------------------------------------";
			Escribir "¿Cuál es el estado más grande de los Estados Unidos?";
			Escribir "----------------------------------------------------";
			Escribir "";
			Escribir "1.- Montana";
			Escribir "";
			Escribir "2.- Oclahoma";
			Escribir "";
			Escribir "3.- Alaska";
			Escribir "";
			Escribir "4.- New York";
			Escribir "";
			leer res4;
			Si (res4 = 3)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lo siento tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 5)Entonces
			Escribir "";
			Escribir "--------------------------------------------------------";
			Escribir "¿Qué río europeo fluye a través de 10 países diferentes?";
			Escribir "--------------------------------------------------------";
			Escribir "";
			Escribir "1.- Rin";
			Escribir "";
			Escribir "2.- Amazonas";
			Escribir "";
			Escribir "3.- Danobio";
			Escribir "";
			Escribir "4.- Nilo";
			Escribir "";
			leer res5;
			Si (res5 = 3) Entonces
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lo siento tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 6)Entonces
			Escribir "";
			Escribir "--------------------------------------------------------";
			Escribir "¿Qué río europeo fluye a través de 10 países diferentes?";
			Escribir "--------------------------------------------------------";
			Escribir "";
			Escribir "1.- Rin";
			Escribir "";
			Escribir "2.- Amazonas";
			Escribir "";
			Escribir "3.- Danobio";
			Escribir "";
			Escribir "4.- Nilo";
			Escribir "";
			leer res6;
			Si (res6 = 3)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lo siento tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 7)Entonces
			Escribir "";
			Escribir "------------------------------------------------";
			Escribir "¿Cuál es el continente más poblado de la tierra?";
			Escribir "------------------------------------------------";
			Escribir "";
			Escribir "1.- Europa";
			Escribir "";
			Escribir "2.- Asia";
			Escribir "";
			Escribir "3.- Oceania";
			Escribir "";
			Escribir "4.- Africa";
			Escribir "";
			leer res7;
			Si (res7 = 2)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lo siento tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 8)Entonces
			Escribir "";
			Escribir "----------------------------------------------";
			Escribir "¿Qué país tiene el mayor número de habitantes?";
			Escribir "----------------------------------------------";
			Escribir "";
			Escribir "1.- EE.UU";
			Escribir "";
			Escribir "2.- Canada";
			Escribir "";
			Escribir "3.- Rusia";
			Escribir "";
			Escribir "4.- China";
			Escribir "";
			leer res8;
			Si (res8 = 4)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lo siento tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 9)Entonces
			Escribir "";
			Escribir "--------------------------------------------";
			Escribir "¿En qué país se encuentra la Torre de Belém?";
			Escribir "--------------------------------------------";
			Escribir "";
			Escribir "1.- Alemania";
			Escribir "";
			Escribir "2.- Francia";
			Escribir "";
			Escribir "3.- Portugal";
			Escribir "";
			Escribir "4.- España";
			Escribir "";
			leer res9;
			Si (res9 = 3)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lo siento tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 10)Entonces
			Escribir "";
			Escribir "-----------------------------------------";
			Escribir "¿Cuál es la ciudad más antigua del mundo?";
			Escribir "-----------------------------------------";
			Escribir "";
			Escribir "1.- Damasco";
			Escribir "";
			Escribir "2.- Sodoma";
			Escribir "";
			Escribir "3.- Gomorra";
			Escribir "";
			Escribir "4.- Jerusalem";
			Escribir "";
			leer res10;
			Si (res10 = 1)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir " Genial, tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lo siento tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Escribir "";
		Escribir "Presiona ENTER para continuar";
		Esperar Tecla;
		Borrar Pantalla;
		
		Escribir "********************************";
		Escribir "*   Segunda Pregunta           *";
		Escribir "*      - Categoria Historia    *";
		Escribir "********************************";
		
		resp<-azar(10)+1;
		
		
		Si (resp = 1)Entonces
			Escribir "";
			Escribir "----------------------------------------------------";
			Escribir "¿Qué civilización se asento en las orillas del Nilo?";
			Escribir "----------------------------------------------------";
			Escribir "";
			Escribir "1.- Egipcia";
			Escribir "";
			Escribir "2.- Mesopotamica";
			Escribir "";
			Escribir "3.- Griega";
			Escribir "";
			Escribir "4.- Romana";
			Escribir "";
			leer res1;
			Si (res1 = 1)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Eureca!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lastima tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 2)Entonces
			Escribir "";
			Escribir "--------------------------------------------------------------------";
			Escribir "¿Dónde se han encontrado los primeros documentos escritos del mundo?";
			Escribir "--------------------------------------------------------------------";
			Escribir "";
			Escribir "1.- Egipto";
			Escribir "";
			Escribir "2.- Oriente Proximo";
			Escribir "";
			Escribir "3.- Gricia";
			Escribir "";
			Escribir "4.- Roma";
			Escribir "";
			leer res2;
			Si (res2 = 2)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Eureca!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lastima tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 3)Entonces
			Escribir "";
			Escribir "-------------------------------------";
			Escribir "¿Dónde se localizaba el Imperio inca?";
			Escribir "-------------------------------------";
			Escribir "";
			Escribir "1.- Mexico";
			Escribir "";
			Escribir "2.- Onduras";
			Escribir "";
			Escribir "3.- Peru";
			Escribir "";
			Escribir "4.- Venezuela";
			Escribir "";
			leer res3;
			Si (res3 = 3)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Eureca!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lastima tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 4)Entonces
			Escribir "";
			Escribir "-------------------------------------------------------------------";
			Escribir "¿Qué civilización se centró alrededor de la ciudad de Tenochtitlan?";
			Escribir "-------------------------------------------------------------------";
			Escribir "";
			Escribir "1.- Maya";
			Escribir "";
			Escribir "2.- Tabajara";
			Escribir "";
			Escribir "3.- Inca";
			Escribir "";
			Escribir "4.- Azteca";
			Escribir "";
			leer res4;
			Si (res4 = 4)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Eureca!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lastima tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 5)Entonces
			Escribir "";
			Escribir "------------------------------------------------";
			Escribir "¿Cuál fue la primera capital del Antiguo Egipto?";
			Escribir "------------------------------------------------";
			Escribir "";
			Escribir "1.- Memfis";
			Escribir "";
			Escribir "2.- Luxor";
			Escribir "";
			Escribir "3.- Cairo";
			Escribir "";
			Escribir "4.- Hamunaftra";
			Escribir "";
			leer res5;
			Si (res5 = 1)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Eureca!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lastima tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 6)Entonces
			Escribir "";
			Escribir "--------------------------------------------------------------------------------------------------";
			Escribir "¿Cuál es el periodo en el que se divide la historia más extenso en el que ha vivido el ser humano?";
			Escribir "--------------------------------------------------------------------------------------------------";
			Escribir "";
			Escribir "1.- El Mesozoico";
			Escribir "";
			Escribir "2.- El paleolitico";
			Escribir "";
			Escribir "3.- El jurasico";
			Escribir "";
			Escribir "4.- El cretacico";
			Escribir "";
			leer res6;
			Si (res6 = 2)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Eureca!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lastima tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 7)Entonces
			Escribir "";
			Escribir "-------------------------------------------------";
			Escribir "¿Cuándo se considera que termina la Edad Antigua?";
			Escribir "-------------------------------------------------";
			Escribir "";
			Escribir "1.- Con la invención de la maquina a vapor";
			Escribir "";
			Escribir "2.- Con la finalización de la I Guerra Mundial";
			Escribir "";
			Escribir "3.- Con la caída del Imperio romano de Occidente";
			Escribir "";
			Escribir "4.- Con la coronación de los reyes catolicos";
			Escribir "";
			leer res7;
			Si (res7 = 3)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Eureca!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lastima tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 8)Entonces
			Escribir "";
			Escribir "-------------------------------------------------------------------------";
			Escribir "¿Qué emperador romano es conocido por haber tenido un amor con Cleopatra?";
			Escribir "-------------------------------------------------------------------------";
			Escribir "";
			Escribir "1.- Marco Antoni";
			Escribir "";
			Escribir "2.- Marco Aurelio";
			Escribir "";
			Escribir "3.- Neron";
			Escribir "";
			Escribir "4.- Jilio Cesar";
			Escribir "";
			leer res8;
			Si (res8 = 4)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Eureca!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lastima tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 9)Entonces
			Escribir "";
			Escribir "------------------------------------------------------------------------------------------";
			Escribir "¿Qué conquitador asiático fundó el primer Imperio mongol y conquistó gran parte de China? ";
			Escribir "------------------------------------------------------------------------------------------";
			Escribir "";
			Escribir "1.- Gengis Kan";
			Escribir "";
			Escribir "2.- Atila";
			Escribir "";
			Escribir "3.- Liu Kang";
			Escribir "";
			Escribir "4.- Confucio";
			Escribir "";
			leer res9;
			Si (res9 = 1)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Eureca!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lastima tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 10)Entonces
			Escribir "";
			Escribir "---------------------------------------------------------------------------------------------------";
			Escribir "¿Cómo se llama la enfermedad que mató en la Edad Media a casi la mitad de los habitantes de Europa?";
			Escribir "---------------------------------------------------------------------------------------------------";
			Escribir "";
			Escribir "1.- La fiebre española";
			Escribir "";
			Escribir "2.- La Peste Negra";
			Escribir "";
			Escribir "3.- Covid-19";
			Escribir "";
			Escribir "4.- Tuberculosis";
			Escribir "";
			leer res10;
			Si (res10 = 2)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Eureca!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Lastima tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Escribir "";
		Escribir "Presiona ENTER para continuar";
		Esperar Tecla;
		Borrar Pantalla;
		
		Escribir "********************************";
		Escribir "*   Tercera Pregunta           *";
		Escribir "*      - Categoria Naturaleza  *";
		Escribir "********************************";
		
		resp<-azar(10)+1;
		
		
		Si (resp = 1)Entonces
			Escribir "";
			Escribir "-------------------------------------------------------------";
			Escribir "¿Según su forma de alimentarse, consideramos a los cerdos...?";
			Escribir "-------------------------------------------------------------";
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
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 2)Entonces
			Escribir "";
			Escribir "------------------------------------------------------------------------------";
			Escribir "¿Según su forma de reproducirse, consideramos a las tortugas como animales...?";
			Escribir "------------------------------------------------------------------------------";
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
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 3)Entonces
			Escribir "";
			Escribir "------------------------------------------";
			Escribir "¿Qué tipo de animales son los murciélagos?";
			Escribir "------------------------------------------";
			Escribir "";
			Escribir "1.- Anfivios";
			Escribir "";
			Escribir "2.- Reptiles";
			Escribir "";
			Escribir "3.- Mamiferos";
			Escribir "";
			Escribir "4.- Aves";
			Escribir "";
			leer res3;
			Si (res3 = 3)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Estupendo!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 4)Entonces
			Escribir "";
			Escribir "-----------------------------------";
			Escribir "¿Los equinodermos son animales ...?";
			Escribir "-----------------------------------";
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
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 5)Entonces
			Escribir "";
			Escribir "------------------------------------------";
			Escribir "¿Cuántas patas tienen todos los arácnidos?";
			Escribir "------------------------------------------";
			Escribir "";
			Escribir "1.- Tiene 4 patas";
			Escribir "";
			Escribir "2.- Tiene 6 patas";
			Escribir "";
			Escribir "3.- Tiene 8 patas";
			Escribir "";
			Escribir "4.- Tiene 10 patas";
			Escribir "";
			leer res5;
			Si (res5 = 3)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Estupendo!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 6)Entonces
			Escribir "";
			Escribir "-----------------------------------------------------------------------------";
			Escribir "¿Cómo se llama el proceso por el que las plantas fabrican su propio alimento?";
			Escribir "-----------------------------------------------------------------------------";
			Escribir "";
			Escribir "1.- Fotosintesis";
			Escribir "";
			Escribir "2.- Nutrición";
			Escribir "";
			Escribir "3.- Digestion";
			Escribir "";
			Escribir "4.- Sintesis";
			Escribir "";
			leer res6;
			Si (res6 = 1)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Estupendo!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 7)Entonces
			Escribir "";
			Escribir "----------------------------------";
			Escribir "¿Qué parte no pertenece a la flor?";
			Escribir "----------------------------------";
			Escribir "";
			Escribir "1.- Estambre";
			Escribir "";
			Escribir "2.- Ovario";
			Escribir "";
			Escribir "3.- Caliz";
			Escribir "";
			Escribir "4.- Pistilo";
			Escribir "";
			leer res7;
			Si (res7 = 2)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Estupendo!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 8)Entonces
			Escribir "";
			Escribir "----------------------------";
			Escribir "¿Dónde se encuentra corazón?";
			Escribir "----------------------------";
			Escribir "";
			Escribir "1.- En el lado derecho del tórax";
			Escribir "";
			Escribir "2.- En el lado izquierdo del tórax";
			Escribir "";
			Escribir "3.- En el tórax, entre los pulmones";
			Escribir "";
			Escribir "4.- En el torax delante de los pulmones";
			Escribir "";
			leer res8;
			Si (res8 = 3)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Estupendo!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 9)Entonces
			Escribir "";
			Escribir "-----------------------------------";
			Escribir "¿Cómo se mide la masa de un cuerpo?";
			Escribir "-----------------------------------";
			Escribir "";
			Escribir "1.- Con una probeta";
			Escribir "";
			Escribir "2.- Con un osciloscopio";
			Escribir "";
			Escribir "3.- Con un amperimetro";
			Escribir "";
			Escribir "4.- Con una bascula";
			Escribir "";
			leer res9;
			Si (res9 = 4)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Estupendo!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 10)Entonces
			Escribir "";
			Escribir "----------------------------------------------";
			Escribir "¿Cuál de las siguientes máquinas no es simple?";
			Escribir "----------------------------------------------";
			Escribir "";
			Escribir "1.- La grua";
			Escribir "";
			Escribir "2.- La polea";
			Escribir "";
			Escribir "3.- El plano inclinado";
			Escribir "";
			Escribir "4.- La palanca";
			Escribir "";
			leer res10;
			Si (res10 = 1)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Estupendo!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Por los pelos, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Escribir "";
		Escribir "Presiona ENTER para continuar";
		Esperar Tecla;
		Borrar Pantalla;
		
		Escribir "********************************";
		Escribir "*   Cuarta Pregunta            *";
		Escribir "*      - Categoria Arte        *";
		Escribir "********************************";
		
		resp<-azar(10)+1;
		
		
		Si (resp = 1)Entonces
			Escribir "";
			Escribir "------------------------------";
			Escribir "¿En que siglo nació Velázquez?";
			Escribir "------------------------------";
			Escribir "";
			Escribir "1.- Siglo XVII";
			Escribir "";
			Escribir "2.- Siglo XVIII";
			Escribir "";
			Escribir "3.- Siglo XV";
			Escribir "";
			Escribir "4.- Siglo XVI";
			Escribir "";
			leer res1;
			Si (res1 = 1)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 2)Entonces
			Escribir "";
			Escribir "--------------------------------";
			Escribir "¿En que museo está la Mona Lisa?";
			Escribir "--------------------------------";
			Escribir "";
			Escribir "1.- EL Prado";
			Escribir "";
			Escribir "2.- Louvre";
			Escribir "";
			Escribir "3.- Smithsonian";
			Escribir "";
			Escribir "4.- Britihs Museum";
			Escribir "";
			leer res2;
			Si (res2 = 2)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 3)Entonces
			Escribir "";
			Escribir "-----------------------------";
			Escribir "¿En que siglo nació Van Gogh?";
			Escribir "-----------------------------";
			Escribir "";
			Escribir "1.- Siglo XX";
			Escribir "";
			Escribir "2.- Siglo XVII";
			Escribir "";
			Escribir "3.- Siglo XIX";
			Escribir "";
			Escribir "4.- Siglo XVIII";
			Escribir "";
			leer res3;
			Si (res3 = 3)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 4)Entonces
			Escribir "";
			Escribir "----------------------------------------------------------";
			Escribir "¿De que estilo es la catedral Nuestra señora de Notredame?";
			Escribir "----------------------------------------------------------";
			Escribir "";
			Escribir "1.- Romanico";
			Escribir "";
			Escribir "2.- Rococó";
			Escribir "";
			Escribir "3.- Barroco";
			Escribir "";
			Escribir "4.- Gotico";
			Escribir "";
			leer res4;
			Si (res4 = 4)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 5)Entonces
			Escribir "";
			Escribir "----------------------------------------";
			Escribir "¿En que siglo se inició el Renacimiento?";
			Escribir "----------------------------------------";
			Escribir "";
			Escribir "1.- Siglo XV";
			Escribir "";
			Escribir "2.- Siglo VX";
			Escribir "";
			Escribir "3.- Siglo III";
			Escribir "";
			Escribir "4.- Siglo XIII";
			Escribir "";
			leer res5;
			Si (res5 = 1)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 6)Entonces
			Escribir "";
			Escribir "----------------------------------------------------";
			Escribir "¿A que estilo pertenece < El David > de Miguelangel?";
			Escribir "----------------------------------------------------";
			Escribir "";
			Escribir "1.- Barroco";
			Escribir "";
			Escribir "2.- Renacimiento";
			Escribir "";
			Escribir "3.- Gótico";
			Escribir "";
			Escribir "4.- Romanico";
			Escribir "";
			leer res6;
			Si (res6 = 2)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 7)Entonces
			Escribir "";
			Escribir "-------------------------------------------------------------------------------";
			Escribir "¿Quien dibujo el cuadro que lleva por nombre < La persistencia de la memoria >?";
			Escribir "-------------------------------------------------------------------------------";
			Escribir "";
			Escribir "1.- Velazquez";
			Escribir "";
			Escribir "2.- Goya";
			Escribir "";
			Escribir "3.- Salvador Dalí";
			Escribir "";
			Escribir "4.- Picaso";
			Escribir "";
			leer res7;
			Si (res7 = 3)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 8)Entonces
			Escribir "";
			Escribir "-------------------";
			Escribir "¿Cuándo nació Goya?";
			Escribir "-------------------";
			Escribir "";
			Escribir "1.- 1700";
			Escribir "";
			Escribir "2.- 1738";
			Escribir "";
			Escribir "3.- 1749";
			Escribir "";
			Escribir "4.- 1746";
			Escribir "";
			leer res8;
			Si (res8 = 4)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 9)Entonces
			Escribir "";
			Escribir "-------------------";
			Escribir "¿La piedad es una escultura de?";
			Escribir "-------------------";
			Escribir "";
			Escribir "1.- Miguel Angel";
			Escribir "";
			Escribir "2.- Leonardo Davinci";
			Escribir "";
			Escribir "3.- Donatello";
			Escribir "";
			Escribir "4.- Bernini";
			Escribir "";
			leer res9;
			Si (res9 = 1)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Si (resp = 10)Entonces
			Escribir "";
			Escribir "-----------------------------------------------------------------------------------------";
			Escribir "¿Qué nombre recibe el estilo arquitectónico de las construcciones árabes en la península?";
			Escribir "-----------------------------------------------------------------------------------------";
			Escribir "";
			Escribir "1.- Mozárabe";
			Escribir "";
			Escribir "2.- Nazarí";
			Escribir "";
			Escribir "3.- Arábigo";
			Escribir "";
			Escribir "4.- Arabesco";
			Escribir "";
			leer res10;
			Si (res10 = 2)Entonces
				corr<-corr +1;
				Escribir "";
				Escribir "Asombroso!!! tu respuesta es correcta";
			Sino inc<-inc +1;
				Escribir "";
				Escribir "Cachis, tu respuesta es incorrecta";
			FinSi
		FinSi
		
		Escribir "";
		Escribir "Presiona ENTER para continuar";
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
		Escribir " Presiona ENTER para conocer tus resultados finales";
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
		
		// Ahora lo que aremos sera volver a llamar al SubProceso para que reinicie el juego y asi volvamos al menu de inicio del juego
		
		Saber_y_Ganar;
		
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
		
		Saber_y_Ganar;
		
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
			
			Saber_y_Ganar;
			
		FinSi
		
	FinSi
	
	
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
	Escribir  "*        Software utilizado: PSeint.                                  *";
	Escribir  "*                                                                     *";
	Escribir  "*      Agradecimiento:                                                *";
	Escribir  "*      Me gustaria expresar mi agradecimiento amis profesores:        *";
	Escribir  "*      Alberto Núñez por dejarme meter mas codigo y con el que        *";
	Escribir  "*      me he reido y aprendido lo genial que es programar y           *";
	Escribir  "*      a Alejandro Moran el cual me inspiro para decidirme a llevar   *";
	Escribir  "*      ha cavo esta gran aventura en la programación.                 *";
	Escribir  "*                                                                     *";
	Escribir  "***********************************************************************";
	Escribir "";
	Escribir "Para continuar presione cualquier tecla";
	Esperar Tecla;
	
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
		Escribir  "*                                                                     *";
		Escribir  "*                                                                     *";
		Escribir  "*                                                                     *";
		Escribir  "*                       5) Cresditos                                  *";
		Escribir  "***********************************************************************";
		
		// Aqui lo que hacemos con este "leer" es que nos deje seleccionar el juego que queramos 
		
		Leer men;
		
		Segun men Hacer
			1:
				Saber_y_Ganar;
			5:
				creditos;
		FinSegun
		
		Borrar Pantalla;
		
		Escribir "¿Quiere volver a jugar o elegir otro juego?";
		Escribir " Teclé < s > para seguir o < n > para abandonar";
		Leer decision;
		
	Hasta Que decision = "n";
	
FinProceso
	