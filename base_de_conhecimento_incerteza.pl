	:- dynamic(fact/1), [backward,forward,proof].
	/*Origem e destino*/
	%braga, porto , Lisboa, Faro.

	

	if braga and porto then curta.
	if braga and lisboa then razoavel.
	if braga and faro then longa.
	if porto and lisboa then razoavel.
	if porto and faro then longa.
	if lisboa and faro then razoavel.
	


	%viagem
	%distancia: longa, curta e razoavel

	%viajante.
	%orcamento: baixo,medio, alto.
	%tempo: muito, pouco, mediano.

	if baixo and muito then baixo_muito.
	if baixo and pouco then baixo_pouco.
	if baixo and mediano then baixo_mediano.

	if medio and muito then  medio_muito.
	if medio and pouco then medio_pouco.
	if medio and mediano then medio_mediano.

	if alto and  muito then alto_muito.
	if alto and pouco then alto_pouco.
	if alto and mediano then alto_mediano.

	%conclusoes
	
	if curta and baixo_muito then comboio.
	if curta and baixo_mediano then comboio.
	if curta and baixo_pouco then comboio. 

	if curta and medio_muito then carro.
	if curta and medio_pouco then comboio.
	if curta and medio_mediano then carro. 

	if curta and alto_muito then carro.
	if curta and alto_pouco then comboio.
	if curta and alto_mediano then comboio.


	if razoavel and baixo_muito then autocarro.
	if razoavel and baixo_pouco then autocarro.
	if razoavel and baixo_mediano then autocarro .

	if razoavel and medio_muito then carro.
	if razoavel and medio_pouco then comboio.
	if razoavel and medio_mediano then comboio.

	if razoavel and alto_muito then comboio.
	if razoavel and alto_pouco then aviao.
	if razoavel and alto_mediano then aviao.


	if longa and baixo_muito then autocarro.
	if longa and baixo_pouco then comboio.
	if longa and baixo_mediano then autocarro.

	if longa and medio_muito then carro.
	if longa and medio_pouco then comboio.
	if longa and medio_mediano then comboio.

	if longa and alto_muito then aviao.
	if longa and alto_pouco then aviao.
	if longa and alto_mediano then aviao.