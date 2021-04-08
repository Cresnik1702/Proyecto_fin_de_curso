Proceso Juegos_Reunidos
	
	// Aqui vamos a declarar todas las variables.	

Definir t Como Entero;
Definir men Como Entero;
Definir r Como Entero;
Definir corr Como Entero;
Definir inc Como Entero; 
Definir res Como Entero;
Definir resp Como Entero;
Definir res1 Como Entero;
Definir resp1 Como Entero; 
Definir res2 Como Entero;
Definir resp2 Como Entero; 
Definir res3 Como Entero;
Definir resp3 Como Entero; 
Definir res4 Como Entero;
Definir resp4 Como Entero; 
Definir res5 Como Entero;
Definir resp5 Como Entero; 
Definir res6 Como Entero;
Definir resp6 Como Entero; 
Definir res7 Como Entero;
Definir resp7 Como Entero; 
Definir res8 Como Entero;
Definir resp8 Como Entero;  
Definir res9 Como Entero;
Definir resp9 Como Entero; 
Definir res10 Como Entero;
Definir resp10 como entero;
Definir res11 Como Entero;
Definir resp11 Como Entero; 
Definir res12 Como Entero;
Definir resp12 Como Entero;  
Definir res13 Como Entero;
Definir resp13 Como Entero; 
Definir res14 Como Entero;
Definir resp14 Como Entero; 
Definir res15 Como Entero;
Definir resp15 Como Entero; 
Definir res16 Como Entero;
Definir resp16 Como Entero; 
Definir res17 Como Entero;
Definir resp17 Como Entero; 
Definir res18 Como Entero;
Definir resp18 Como Entero; 
Definir res19 Como Entero;
Definir resp19 Como Entero; 
Definir res20 Como Entero;
Definir resp20 Como Entero; 
Definir res21 Como Entero;
Definir resp21 Como Entero; 
Definir res22 Como Entero;
Definir resp22 Como Entero; 
Definir res23 Como Entero;
Definir resp23 Como Entero; 
Definir res24 Como Entero;
Definir resp24 Como Entero; 
Definir res25 Como Entero;
Definir resp25 Como Entero; 
Definir cont Como Entero;
Definir nom Como Caracter;
Definir porc Como Real;

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
Escribir  "*                   1) Prguntas y respuestas.                         *";
Escribir  "*                                                                     *";
Escribir  "***********************************************************************";

Leer men;

	Si (men = 1) Entonces
		
		Borrar Pantalla;
		
		Escribir  "***********************************************************************";
		Escribir  "*                                                                     *";
		Escribir  "*                     << Preguntas y Respuestas >>                    *";
		Escribir  "*                                                                     *";
		Escribir  "*                              1) Jugar                               *";
		Escribir  "*                                                                     *";
		Escribir  "*                              2) Ayuda                               *";
		Escribir  "*                                                                     *";
		Escribir  "***********************************************************************";
		
		Leer men;
		
		Si (men = 1) Entonces
			
				corr<-0;
				inc<-0;
				Borrar Pantalla;
				
				Escribir "---Primera Pregunta---";
				resp<-azar(5)+1;
				
				
				Si (resp = 1)Entonces
					Escribir "Una persona que realiza soldaduras es un ...";
					Escribir "1. Soldador";
					Escribir "2. Soleado";
					Escribir "3. Soldado";
					Escribir "4. Sorteado";
					leer res1;
					Si (res1 = 1)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 2)Entonces
					Escribir "Cuantas m tiene la frase Mi mamá me mima";
					Escribir "1. Cinco";
					Escribir "2. Diez";
					Escribir "3. Cuatro";
					Escribir "4. Seis";
					leer res2;
					Si (res2 = 4)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 3)Entonces
					Escribir "Cantar entre dientes y sin pronunciar palabras es:?";
					Escribir "1. Tararear";
					Escribir "2. Tiritar";
					Escribir "3. Torear";
					Escribir "4. Trotar";
					leer res3;
					Si (res3 = 1)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 4)Entonces
					Escribir "¿En que país nació Gabriel García Márquez?:";
					Escribir "1.Venezuela";
					Escribir "2. Colombia";
					Escribir "3. México";
					Escribir "4. Chile";
					leer res4;
					Si (res4 = 2)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 5)Entonces
					Escribir "¿Qué país goleo a Brasil 1-7 en el mundial pasado?";
					Escribir "1. Colombia";
					Escribir "2. Argentina";
					Escribir "3. Alemania";
					Escribir "4. Holanda";
					leer res5;
					Si (res5 = 3)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				
				
				
				Escribir "Presiona ENTER para continuar";
				Leer cont;
				Borrar Pantalla;
				Escribir "";
				Escribir "---Segunda Pregunta---";
				resp<-azar(5)+1;
				
				
				Si (resp = 1)Entonces
					Escribir "¿Con que palabra se expresa correctamente que alguien ocupo el lugar 11 en un concurso?";
					Escribir "1. Undécimo";
					Escribir "2. Primerdecimo";
					Escribir "3. Undecimo";
					Escribir "4. Undésimo";
					leer res6;
					Si (res6 = 1)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 2)Entonces
					Escribir "La siguiente frase ¿En qué idioma está escrito?: buon pomeriggio ";
					Escribir "1. Frances";
					Escribir "2. Portugues";
					Escribir "3. Italiano";
					Escribir "4. Albanés";
					leer res7;
					Si (res7 = 3)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 3)Entonces
					Escribir "El kilometro es una medida de:";
					Escribir "1. Presión";
					Escribir "2. Longitud";
					Escribir "3. Peso";
					Escribir "4. Temperatura";
					leer res8;
					Si (res8 = 2)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 4)Entonces
					Escribir "¿Cuál de las ciudades no se encuentra en Colombia?";
					Escribir "1. Cali";
					Escribir "2. Soledad";
					Escribir "3. Leticia";
					Escribir "4. Córdoba";
					leer res9;
					Si (res9 = 4)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 5)Entonces
					Escribir "La palabra PROGRAMA es";
					Escribir "1. Esdrujula";
					Escribir "2. Grave";
					Escribir "3. Aguda";
					Escribir "4. Sobreesdrujula";
					leer res10;
					Si (res10 = 2)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				
				
				
				Escribir "Presiona ENTER para continuar";
				Leer cont;
				Escribir "";
				Escribir "---Tercera Pregunta---";
				resp<-azar(5)+1;
				
				
				Si (resp = 1)Entonces
					Escribir "¿En qué billete sale Policarpa Salavarrieta?";
					Escribir "1. En el de $ 10.000";
					Escribir "2. En el de $2.000";
					Escribir "3. En el de 20.000";
					Escribir "4. En ninguno de los anteriores";
					leer res11;
					Si (res11 = 1)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 2)Entonces
					Escribir "El hueso fémur se encuentra en:";
					Escribir "1. Los brazos";
					Escribir "2. La cabeza";
					Escribir "3. El abdomen";
					Escribir "4. Las piernas";
					leer res12;
					Si (res12 = 4)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 3)Entonces
					Escribir "¿Cuál de los siguientes no es un lenguaje de programación?";
					Escribir "1. Phiton";
					Escribir "2. C++";
					Escribir "3. Java";
					Escribir "4. Ubuntu";
					leer res13;
					Si (res13 = 4)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 4)Entonces
					Escribir "¿Cuánto es 2+8*10-12/1(-24+26)?";
					Escribir "1. 396";
					Escribir "2. 76";
					Escribir "3. 35";
					Escribir "4. Ninguna de las anteriores";
					leer res14;
					Si (res14 = 3)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 5)Entonces
					Escribir "¿Cuál de los siguientes no es un continente?";
					Escribir "1. Australia";
					Escribir "2. Antártida";
					Escribir "3. Oceanía";
					Escribir "4. Europa";
					leer res15;
					Si (res15 = 1)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				
				
				
				
				Escribir "Presiona ENTER para continuar";
				Leer cont;
				Escribir "";
				Escribir "---Cuarta Pregunta---";
				resp<-azar(5)+1;
				
				
				Si (resp = 1)Entonces
					Escribir "No es un país de Asia:";
					Escribir "1. Grecia";
					Escribir "2. China";
					Escribir "3. Mongolia";
					Escribir "4. Laos";
					leer res16;
					Si (res16 = 1)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 2)Entonces
					Escribir "La frecuencia se mide en:";
					Escribir "1. Amperios";
					Escribir "2. Hercios";
					Escribir "3. Voltios";
					Escribir "4. Watts";
					leer res17;
					Si (res17 = 2)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 3)Entonces
					Escribir "¿Cuál de los siguientes dispositivos de la computadora es de salida?";
					Escribir "1. El teclado";
					Escribir "2. La impresora";
					Escribir "3. El mouse";
					Escribir "4. El micrófono";
					leer res18;
					Si (res18 = 2)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 4)Entonces
					Escribir "La depuración de un algoritmo sirve para:";
					Escribir "1. Diseñar y estructurar un algoritmo";
					Escribir "2. Facilitar la elaboración de un algoritmo";
					Escribir "3. La codificación de un algoritmo";
					Escribir "4. Probar el funcionamiento de un algoritmo";
					leer res19;
					Si (res19 = 4)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 5)Entonces
					Escribir "Los algoritmos pueden ser: ";
					Escribir "1. Cuantitativos o calificativos";
					Escribir "2. Cuantitativos o cualitativos";
					Escribir "3. Buenos o malos";
					Escribir "4. Calificativos  o cualitativos";
					leer res20;
					Si (res20 = 2)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				
				
				Escribir "Presiona ENTER para continuar";
				Leer cont;
				Escribir "";
				Escribir "---Quinta Pregunta---";
				resp<-azar(5)+1;
				
				
				Si (resp = 1)Entonces
					Escribir "Top-down, significa";
					Escribir "1. Caida";
					Escribir "2. De abajo hacia arriba";
					Escribir "3. De arriba hacia abajo";
					Escribir "4. Subir";
					leer res21;
					Si (res21 = 3)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 2)Entonces
					Escribir "Concretamente la tiroides es:";
					Escribir "1. Un hueso";
					Escribir "2. Un musculo ";
					Escribir "3. Una Glándula";
					Escribir "4. Un órgano";
					leer res22;
					Si (res22 = 3)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 3)Entonces
					Escribir "¿Como firmaba Pablo Ruiz Picasso sus pinturas?";
					Escribir "1. Pablo Picasso";
					Escribir "2. P. Picasso";
					Escribir "3. Pablo Ruiz Picasso";
					Escribir "4. Picasso";
					leer res23;
					Si (res23 = 4)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 4)Entonces
					Escribir "¿La fórmula del agua es:?";
					Escribir "1. H2L";
					Escribir "2. 2HO";
					Escribir "3. 2OH";
					Escribir "4. H2O";
					leer res24;
					Si (res24 = 4)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Si (resp = 5)Entonces
					Escribir "La queratina es una proteína la cual podemos encontrar en:";
					Escribir "1. El cabello";
					Escribir "2. Los músculos";
					Escribir "3. Los huesos";
					Escribir "4. La sangre";
					leer res25;
					Si (res25 = 1)Entonces
						corr<-corr +1;
						Escribir "Tu respuesta es correcta";
					Sino inc<-inc +1;
						Escribir "Tu respuesta es incorrecta";
					FinSi
				FinSi
				
				Escribir " Presiona ENTER para conocer tus resultados finales";
				Leer cont;
				
				porc<-(corr/5) *100;
				Borrar Pantalla;
				
				Escribir "********** Resultados **********";
				Escribir "";
				Escribir "Respuestas correctas: ",corr;
				Escribir "Respuestas incorrectas: ",inc;
				Escribir "Respondiste correctamente el ", porc, "% de las preguntas";
				
				Escribir "--------------------------------------------------------";
				Escribir "";
			
		Si (men = 2) Entonces
				
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
				
		FinSi
			
		FinSi
		
	FinSi
	
FinProceso

