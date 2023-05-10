	:- dynamic(fact/1), [backward,forward,proof].
	/*Origem and destino*/
	%pontosPartida_pontosChegada: braga, porto , Lisboa, Faro, Madrid , Paris


	if braga and porto then curta.
	if braga and lisboa then semAeroporto_razoavel.
	if braga and faro then semAeroporto_longa.
	if braga and madrid then semAeroporto_longa.
	if braga and paris then semAeroporto_longa.
	if porto and lisboa then razoavel.
	if porto and faro then longa.
	if porto and madrid then longa.
	if porto and paris then longa.
	if lisboa and faro then razoavel.
	if lisboa and madrid then longa.
	if lisboa and paris then longa.
	if faro and madrid then longa.
	if faro and paris then longa.
	if madrid and paris then longa.

	%restricao braga
	
	if semAeroporto_longa  and basico then semAeroporto_longa_basico.
	if semAeroporto_longa  and intermedio then semAeroporto_longa_intermedio.
	if semAeroporto_longa  and avancado then semAeroporto_longa_avancado.

	if semAeroporto_razoavel  and basico then semAeroporto_razoavel_basico.
	if semAeroporto_razoavel  and intermedio then semAeroporto_razoavel_intermedio.
	if semAeroporto_razoavel  and avancado then semAeroporto_razoavel_avancado.
		
	if semAeroporto_longa_basico and baixo_muito then autocarro.
	if semAeroporto_longa_basico and baixo_mediano then autocarro.
	if semAeroporto_longa_basico and baixo_pouco then autocarro.
	if semAeroporto_longa_basico and medio_muito then comboio.
    if semAeroporto_longa_basico and medio_pouco then comboio.
    if semAeroporto_longa_basico and medio_mediano then comboio.
    if semAeroporto_longa_basico and alto_muito then carro.
    if semAeroporto_longa_basico and alto_pouco then carro.
    if semAeroporto_longa_basico and alto_mediano then carro.
	if semAeroporto_longa_intermedio and baixo_muito then autocarro.
    if semAeroporto_longa_intermedio and baixo_pouco then autocarro.
    if semAeroporto_longa_intermedio and baixo_mediano then autocarro.
	if semAeroporto_longa_intermedio and medio_muito then comboio.
	if semAeroporto_longa_intermedio and medio_pouco then comboio.
	if semAeroporto_longa_intermedio and medio_mediano then comboio.
	if semAeroporto_longa_intermedio and alto_muito then carro.
	if semAeroporto_longa_intermedio and alto_pouco then carro.
	if semAeroporto_longa_intermedio and alto_mediano then carro.
	if semAeroporto_longa_avancado and baixo_muito then autocarro.
	if semAeroporto_longa_avancado and baixo_pouco then autocarro.
	if semAeroporto_longa_avancado and baixo_mediano then autocarro.
	if semAeroporto_longa_avancado and medio_muito then comboio .
	if semAeroporto_longa_avancado and medio_pouco then carro.
	if semAeroporto_longa_avancado and medio_mediano then comboio.
	if semAeroporto_longa_avancado and alto_muito then carro.
	if semAeroporto_longa_avancado and alto_pouco then carro.
	if semAeroporto_longa_avancado and alto_mediano then carro.
	

	

    if semAeroporto_razoavel_basico and baixo_muito then comboio.
    if semAeroporto_razoavel_basico and baixo_pouco then comboio.
    if semAeroporto_razoavel_basico and baixo_mediano then comboio.
	if semAeroporto_razoavel_basico and medio_muito then comboio.
	if semAeroporto_razoavel_basico and medio_pouco then carro.
	if semAeroporto_razoavel_basico and medio_mediano then carro.
	if semAeroporto_razoavel_basico and alto_muito then carro .
	if semAeroporto_razoavel_basico and alto_pouco then carro.
	if semAeroporto_razoavel_basico and alto_mediano then carro .
	if semAeroporto_razoavel_intermedio and baixo_muito then autocarro.
	if semAeroporto_razoavel_intermedio and baixo_pouco then comboio.
	if semAeroporto_razoavel_intermedio and baixo_mediano then comboio.
	if semAeroporto_razoavel_intermedio and medio_muito then comboio.
	if semAeroporto_razoavel_intermedio and medio_pouco then carro.
	if semAeroporto_razoavel_intermedio and medio_mediano then comboio.
	if semAeroporto_razoavel_intermedio and alto_muito then carro.
	if semAeroporto_razoavel_intermedio and alto_pouco then carro.
	if semAeroporto_razoavel_intermedio and alto_mediano then carro.
	if semAeroporto_razoavel_avancado and baixo_muito then autocarro.
	if semAeroporto_razoavel_avancado and baixo_pouco then comboio.
	if semAeroporto_razoavel_avancado and baixo_mediano then comboio.
	if semAeroporto_razoavel_avancado and medio_muito then comboio.
	if semAeroporto_razoavel_avancado and medio_pouco then carro.
	if semAeroporto_razoavel_avancado and medio_mediano then comboio.
	if semAeroporto_razoavel_avancado and alto_muito then carro.
	if semAeroporto_razoavel_avancado and alto_pouco then comboio.
	if semAeroporto_razoavel_avancado and alto_mediano then comboio.

	
	%viagem
	%distancia: curta, razoavel and longa
	%conforto: basico, intermedio and avancado
	
	if curta and basico then curta_basico.
	if curta and intermedio then curta_intermedio.
	if curta and avancado then curta_avancado.

	if razoavel and basico then  razoavel_basico.
	if razoavel and intermedio then razoavel_intermedio.
	if razoavel and avancado then razoavel_avancado.

	if longa and  basico then longa_basico.
	if longa and intermedio then longa_intermedio.
	if longa and avancado then longa_avancado.


	%viajante
	%orcamento: baixo,medio, alto
	%tempo: muito, pouco, mediano

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
	/*perfil_viagem : curta_basico , curta_intermedio, curta_avancado, razoavel_basico, razoavel_intermedio, razoavel_avancado,
	longa_basico, longa_intermedio, longa_avancado

	perfil_viajante: baixo_muito , baixo_pouco , baixo_mediano , medio_muito , medio_pouco , medio_mediano , alto_muito , 
	alto_pouco, alto_mediano
	
	criterios: orçamento > tempo > distancia > conforto
	*/
	
if curta_basico and baixo_muito then autocarro.
if curta_basico and baixo_pouco then comboio.
if curta_basico and baixo_mediano then comboio.
if curta_basico and medio_muito then comboio.
if curta_basico and medio_pouco then carro.
if curta_basico and medio_mediano then comboio.
if curta_basico and alto_muito then carro.
if curta_basico and alto_pouco then carro.
if curta_basico and alto_mediano then carro.
if curta_intermedio and baixo_muito then autocarro.
if curta_intermedio and baixo_pouco then comboio.
if curta_intermedio and baixo_mediano then comboio.
if curta_intermedio and medio_muito then comboio.
if curta_intermedio and medio_pouco then carro.
if curta_intermedio and medio_mediano then comboio.
if curta_intermedio and alto_muito then carro.
if curta_intermedio and alto_pouco then carro.
if curta_intermedio and alto_mediano then carro.
if curta_avancado and baixo_muito then autocarro.
if curta_avancado and baixo_pouco then comboio.
if curta_avancado and baixo_mediano then comboio.
if curta_avancado and medio_muito then comboio.
if curta_avancado and medio_pouco then carro.
if curta_avancado and medio_mediano then carro.
if curta_avancado and alto_muito then carro.
if curta_avancado and alto_pouco then carro.
if curta_avancado and alto_mediano then carro.

if razoavel_basico and baixo_muito then autocarro.
if razoavel_basico and baixo_pouco then comboio.
if razoavel_basico and baixo_mediano then comboio.
if razoavel_basico and medio_muito then comboio.
if razoavel_basico and medio_pouco then carro.
if razoavel_basico and medio_mediano then carro.
if razoavel_basico and alto_muito then carro .
if razoavel_basico and alto_pouco then aviao.
if razoavel_basico and alto_mediano then carro .
if razoavel_intermedio and baixo_muito then autocarro.
if razoavel_intermedio and baixo_pouco then comboio.
if razoavel_intermedio and baixo_mediano then comboio.
if razoavel_intermedio and medio_muito then comboio.
if razoavel_intermedio and medio_pouco then carro.
if razoavel_intermedio and medio_mediano then comboio.
if razoavel_intermedio and alto_muito then carro.
if razoavel_intermedio and alto_pouco then aviao.
if razoavel_intermedio and alto_mediano then carro.
if razoavel_avancado and baixo_muito then autocarro.
if razoavel_avancado and baixo_pouco then comboio.
if razoavel_avancado and baixo_mediano then comboio.
if razoavel_avancado and medio_muito then comboio.
if razoavel_avancado and medio_pouco then carro.
if razoavel_avancado and medio_mediano then comboio.
if razoavel_avancado and alto_muito then carro.
if razoavel_avancado and alto_pouco then aviao.
if razoavel_avancado and alto_mediano then aviao.

if longa_basico and baixo_muito then autocarro.
if longa_basico and baixo_pouco then autocarro.
if longa_basico and baixo_mediano then autocarro.
if longa_basico and medio_muito then comboio.
if longa_basico and medio_pouco then comboio.
if longa_basico and medio_mediano then comboio.
if longa_basico and alto_muito then carro.
if longa_basico and alto_pouco then aviao.
if longa_basico and alto_mediano then carro.
if longa_intermedio and baixo_muito then autocarro.
if longa_intermedio and baixo_pouco then autocarro.
if longa_intermedio and baixo_mediano then autocarro.
if longa_intermedio and medio_muito then comboio.
if longa_intermedio and medio_pouco then comboio.
if longa_intermedio and medio_mediano then comboio.
if longa_intermedio and alto_muito then carro.
if longa_intermedio and alto_pouco then aviao.
if longa_intermedio and alto_mediano then aviao.
if longa_avancado and baixo_muito then autocarro.
if longa_avancado and baixo_pouco then autocarro.
if longa_avancado and baixo_mediano then autocarro.
if longa_avancado and medio_muito then comboio .
if longa_avancado and medio_pouco then carro.
if longa_avancado and medio_mediano then comboio.
if longa_avancado and alto_muito then aviao.
if longa_avancado and alto_pouco then aviao.
if longa_avancado and alto_mediano then aviao.


