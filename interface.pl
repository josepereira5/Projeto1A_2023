:-dynamic(fact/1),
[forward, base_de_dados, proof, base_de_conhecimento].
menu:- nl,nl , 	write('\e[H\e[2J'),
				write('                                                                                                        '), nl,
				write('                                                                                                        '), nl,
				write('  Olá, sou um assistente de suporte à decisão do meio de transporte indicado para o seu percurso! Espero ser-lhe util!'),nl,
				retractall(fact(_)), questao1.
				


							 

				
questao1:- 		write('Sendo assim, qual sera a origem do seu percurso?'), nl,
				write('1. braga'), nl,
				write('2. porto'), nl,
				write('3. lisboa'), nl,
				write('4. faro'), nl, nl,
				read(X1), 
				((X1 == 1), assert(fact(braga)), assert(origem(braga)) ,questao2;
				 (X1 == 2), assert(fact(porto)), assert(origem(porto)), questao2;
				 (X1 == 3), assert(fact(lisboa)),assert(origem(lisboa)), questao2;
				 (X1 == 4), assert(fact(faro)), assert(origem(faro)), questao2).
				 
				
				
questao2:-      write('Qual é o destino?'), nl, 
				write('1. braga'), nl,
				write('2. porto'), nl,
				write('3. lisboa'), nl,
				write('4. faro'), nl, nl,
				read(X2), 
				((X2 == 1), assert(fact(braga)), assert(destino(braga)) ,questao3;
				 (X2 == 2), assert(fact(porto)), assert(destino(porto)) ,questao3;
				 (X2 == 3), assert(fact(lisboa)), assert(destino(lisboa)), questao3;
				 (X2 == 4), assert(fact(faro)), assert(destino(faro)), questao3).
				 
				
questao3:-		write('Qual a quantia que esta disposto a gastar?') , nl,
				write('1. alto'), nl,
				write('2. medio'), nl,
				write('3. baixo'), nl, nl,
				read(X3), 
				((X3 == 1), assert(fact(alto)) ,questao4;
				 (X3 == 2), assert(fact(medio)), questao4;
				 (X3 == 3), assert(fact(baixo)), questao4).

questao4:-      write('Qual é a sua disponibilidade?'), nl,
				write('1. muito'), nl,
				write('2. pouco'), nl,
				write('3. mediano'), nl, nl,
				read(X4), 
				((X4 == 1), assert(fact(muito)), questao5;
				 (X4 == 2), assert(fact(pouco)), questao5;
				 (X4 == 3), assert(fact(mediano)), questao5).
				 

questao5:- write('Deseja utilizar o metodo:'), nl,
           write('1. forward'), nl,
           write('2. backward'), nl,
		   write('3. proof'), nl, nl,
           read(X5),
           ((X5 == 1), viagem;
            (X5 == 2), questao6;
			(X5 == 3), questao7).

 
viagem:-     %write('\e[H\e[2J'),
			 write('                                                                                                        '), nl,
			 write('                                                                                                        '), nl,
             write('            Meio de transporte recomendado                   '), nl, 
             demo, origem(X1), destino(X2), findtransporte(X1, X2, Preco), write('O preco da sua viagem  entre '), write(X1), 
			 write(' e '), write(X2), write(' varia entre ' ), write(Preco).
			 
				 
				 
questao6:- write('Qual o meio de transporte que acha que vai ser adequado?'), nl,
           write('1. carro'), nl,
		   write('2. autocarro'), nl,
		   write('3. aviao'), nl,
		   write('4. comboio'), nl, nl,
		   read(X6),
		   ((X6 == 1),  demo(carro);
				 (X6 == 2),  demo(autocarro);
				 (X6 == 3),  demo(aviao);
				 (X6 == 4),  demo(comboio)).
				 
 
questao7:- write('Qual o meio de transporte que acha que vai ser adequado?'), nl,
           write('1. carro'), nl,
		   write('2. autocarro'), nl,
		   write('3. aviao'), nl,
		   write('4. comboio'), nl, nl,
		   read(X7),
				((X7 == 1), demo(carro,P), write(P);
				 (X7 == 2), demo(autocarro,P), write(P);
				 (X7 == 3), demo(aviao,P), write(P);
				 (X7 == 4),demo(comboio,P), write(P)).
				 


				 
				 
 
				 
				 
		
		   
				 
				 
				 
				
				
				
				
				
				
				

				
		    
				
				
        