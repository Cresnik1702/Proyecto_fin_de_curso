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
					
					num2<-num2+(num2+Aleatorio(1,25));
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
					num2<-Aleatorio(1,25);
					
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
					
					Si num1<100 Entonces
						Esperar 2 Segundos;
						
						Si num1 > 100 Entonces
							Esperar 3 Segundos;
							
							Si num1 > 100000 Entonces
								Esperar 5 Segundos;
								
								Si num > 10000000 Entonces
									Esperar 6 Segundos;
									
									Si num1 > 1000000000
										Esperar 8 Segundos;
										
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
					num2<-Aleatorio(1,100);
					
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
					
					Si num1<100 Entonces
						Esperar 2 Segundos;
						
						Si num1 < 1000 Entonces
							Esperar 3 Segundos;
							
							Si num1 < 100000 Entonces
								Esperar 4 Segundos;
								
								Si num < 10000000 Entonces
									Esperar 5 Segundos;
									
									Si num1 < 1000000000
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


Algoritmo sin_titulo
simon_dice;
FinAlgoritmo
