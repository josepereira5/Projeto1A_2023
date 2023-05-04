:-dynamic(fact/1),
[forward, base_de_dados, proof, base_de_conhecimento].


menu:- nl,nl , 	write('\e[H\e[2J'),
				write('******************************************************************************************************************'), nl,
				write('Bem-vindo, sou um assistente de suporte a decisão do meio de transporte indicado para o seu percurso!   '),nl,
				write('Deseja iniciar?  '),nl,
				write('1. SIM'), nl,
				write('2. NAO'), nl,nl,
				read(X0),
				((X0 == 1), retractall(fact(_)), retractall(origem(_)), retractall(destino(_)) , questao1;
				 (X0 == 2), fim).
				
fim :- 			write('******************************************************************************************************************'), nl,
	   			write('Volte sempre, obrigado!').			


							 

				
questao1:- 		write('******************************************************************************************************************'), nl,
				write('Sendo assim, qual sera a origem do seu percurso?'), nl,
				write('1. braga'), nl,
				write('2. porto'), nl,
				write('3. lisboa'), nl,
				write('4. faro'), nl,
				write('5. madrid'), nl,
				write('6. paris'), nl, nl,
				read(X1), 
				((X1 == 1), assert(fact(braga)), assert(origem(braga)), questao2;
				 (X1 == 2), assert(fact(porto)), assert(origem(porto)), questao2;
				 (X1 == 3), assert(fact(lisboa)),assert(origem(lisboa)), questao2;
				 (X1 == 4), assert(fact(faro)), assert(origem(faro)), questao2;
				 (X1 == 5), assert(fact(madrid)), assert(origem(madrid)), questao2;
				 (X1 == 6), assert(fact(paris)), assert(origem(paris)), questao2).															
				 
				
				
questao2:-      write('******************************************************************************************************************'), nl,
				write('Qual sera o destino?'), nl, 
				write('1. braga'), nl,
				write('2. porto'), nl,
				write('3. lisboa'), nl,
				write('4. faro'), nl,
				write('5. madrid'), nl,
				write('6. paris'), nl, nl,
				read(X2), 
				((X2 == 1), assert(fact(braga)), assert(destino(braga)) ,questao3;
				 (X2 == 2), assert(fact(porto)), assert(destino(porto)) ,questao3;
				 (X2 == 3), assert(fact(lisboa)), assert(destino(lisboa)), questao3;
				 (X2 == 4), assert(fact(faro)), assert(destino(faro)), questao3;
				 (X2 == 5), assert(fact(madrid)), assert(destino(madrid)), questao3;
				 (X2 == 6), assert(fact(paris)), assert(destino(paris)), questao3).
				 
				 
				
questao3:-		write('******************************************************************************************************************'), nl,
				write('Qual a quantia que esta disposto a gastar?') , nl,
				write('1. alto'), nl,
				write('2. medio'), nl,
				write('3. baixo'), nl, nl,
				read(X3), 
				((X3 == 1), assert(fact(alto)) ,questao4;
				 (X3 == 2), assert(fact(medio)), questao4;
				 (X3 == 3), assert(fact(baixo)), questao4).

questao4:-      write('******************************************************************************************************************'), nl,
				write('Qual sera a sua disponibilidade?'), nl,
				write('1. muito'), nl,
				write('2. pouco'), nl,
				write('3. mediano'), nl, nl,
				read(X4), 
				((X4 == 1), assert(fact(muito)), questao5;
				 (X4 == 2), assert(fact(pouco)), questao5;
				 (X4 == 3), assert(fact(mediano)), questao5).

questao5:-      write('******************************************************************************************************************'), nl,
				write('Qual o nivel de conforto que deseja?'), nl,
				write('1. avancado'), nl,
				write('2. intermedio'), nl,
				write('3. basico'), nl, nl,
				read(X8), 
				((X8 == 1), assert(fact(avancado)), questao6;
				 (X8 == 2), assert(fact(intermedio)), questao6;
				 (X8 == 3), assert(fact(basico)), questao6).
				 

questao6:- 		write('******************************************************************************************************************'), nl,
		   		write('Deseja utilizar o metodo:'), nl,
				write('1. forward'), nl,
				write('2. backward'), nl,
				write('3. proof'), nl, nl,
				read(X5),
				((X5 == 1), viagem;
				 (X5 == 2), questao7;
				 (X5 == 3), questao8).

 
viagem:-     	write('******************************************************************************************************************'), nl,
			 	write('                                                                                                        '), nl,
			 	write('                                                                                                        '), nl,
            	write('                                       Resultado obtido                                      '), nl, 
             	demo, origem(X1), destino(X2), findtransporte(X1, X2, Preco, Distancia, Transporte), write('O meio de transporte mais adequado sera o '),
				write(Transporte), write(' e o preco da sua viagem  entre '), write(X1), 
			    write(' e '), write(X2), write(' varia entre ' ), write(Preco), write(' e a distancia percorrida sera de '), write(Distancia), write('.').
			 
				 
				 
questao7:-		write('******************************************************************************************************************'), nl,
          	    write('Qual o meio de transporte que acha que vai ser adequado?'), nl,
				write('1. carro'), nl,
				write('2. autocarro'), nl,
				write('3. aviao'), nl,
				write('4. comboio'), nl, nl,
				read(X6),
				((X6 == 1),  demo(carro);
				 (X6 == 2),  demo(autocarro);
				 (X6 == 3),  demo(aviao);
				 (X6 == 4),  demo(comboio)
				 ).
						
 
questao8:- 		write('******************************************************************************************************************'), nl,
		   		write('Qual o meio de transporte que acha que vai ser adequado?'), nl,
           		write('1. carro'), nl,
		   		write('2. autocarro'), nl,
		  		write('3. aviao'), nl,
		  		write('4. comboio'), nl, nl,
				write('******************************************************************************************************************'), nl,
		  	    read(X7), write("                             Explicacao                               "),nl,
				((X7 == 1), demo(carro,P), write(P);
				 (X7 == 2), demo(autocarro,P), write(P);
				 (X7 == 3), demo(aviao,P), write(P);
				 (X7 == 4),demo(comboio,P), write(P)).
				 


/*viagem_exp:-    write('                                                                                                        '), nl,
             	demo, origem(X1), destino(X2), findtransporte(X1, X2, Preco, Distancia, Transporte), write('O meio de transporte mais adequado sera o '),
				write(Transporte), write(' e o preco da sua viagem  entre '), write(X1), 
			    write(' e '), write(X2), write(' varia entre ' ), write(Preco), write(' e a distancia percorrida sera de '), write(Distancia), write('.').	*/			 
				 
 
				 
				 
		
		   
				 
				 
				 
				
				
				
				
				
				
				

				
		    
				
				
        