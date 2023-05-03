%base de dados - viagem - meio de transporte, origem, destino , preco,  

viagem(autocarro, braga, porto, '6 a 10 euros').
viagem(autocarro, braga, lisboa, '15 a 30 euros').
viagem(autocarro, braga, faro, '25 a 50 euros').
viagem(autocarro, porto, braga,  '6 a 10 euros').
viagem(autocarro, porto, lisboa, '10 a 25 euros').
viagem(autocarro, porto, faro, '20 a 40 euros').
viagem(autocarro, lisboa, braga,  '15 a 30 euros').
viagem(autocarro, lisboa, porto,  '10 a 25 euros').
viagem(autocarro, lisboa, faro,  '15 a 30 euros').
viagem(autocarro, faro, braga,  '25 a 50 euros').
viagem(autocarro, faro, porto,  '20 a 40 euros').
viagem(autocarro, faro, lisboa,  '15 a 30 euros').

viagem(comboio, braga, porto, '2 a 5 euros').
viagem(comboio, braga, lisboa, '20 a 40 euros').
viagem(comboio, braga, faro, '40 a 80 euros').
viagem(comboio, porto, braga,  '2 a 5 euros').
viagem(comboio, porto, lisboa, '15 a 35 euros').
viagem(comboio, porto, faro, '35 a 80 euros').
viagem(comboio, lisboa, braga,  '20 a 40 euros').
viagem(comboio, lisboa, porto,  '15 a 35 euros').
viagem(comboio, lisboa, faro,  '20 a 40 euros').
viagem(comboio, faro, braga,  '40 a 80 euros').
viagem(comboio, faro, porto,  '35 a 80 euros').
viagem(comboio, faro, lisboa,  '20 a 40 euros').

viagem(carro, braga, porto, '10 a 15 euros').
viagem(carro, braga, lisboa, '45 a 60 euros').
viagem(carro, braga, faro, '85 a 120 euros').
viagem(carro, porto, braga,  '10 a 15 euros').
viagem(carro, porto, lisboa, '35 a 50 euros').
viagem(carro, porto, faro, '65 a 90 euros').
viagem(carro, lisboa, braga,  '45 a 60 euros').
viagem(carro, lisboa, porto,  '35 a 50 euros').
viagem(carro, lisboa, faro,  '35 a 50 euros').
viagem(carro, faro, braga,  '85 a 120 euros').
viagem(carro, faro, porto,  '65 a 90 euros').
viagem(carro, faro, lisboa,  '35 a 50 euros').

viagem(aviao, braga, lisboa, '20 a 40 euros').
viagem(aviao, braga, faro, '40 a 80 euros').
viagem(aviao, porto, braga,  '2 a 5 euros').
viagem(aviao, porto, lisboa, '15 a 35 euros').
viagem(aviao, porto, faro, '35 a 80 euros').
viagem(aviao, lisboa, braga,  '20 a 40 euros').
viagem(aviao, lisboa, porto,  '15 a 35 euros').
viagem(aviao, lisboa, faro,  '20 a 40 euros').
viagem(aviao, faro, braga,  '40 a 80 euros').
viagem(aviao, faro, porto,  '35 a 80 euros').
viagem(aviao, faro, lisboa,  '20 a 40 euros').


					   
findtransporte(X1, X2, Preco) :- fact(Transporte), viagem(Transporte, X1, X2, Preco).
						   
							




					
				 

