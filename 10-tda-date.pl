fechaYHora(AGNO, MES, DIA, HORA, MINUTO, SEGUNDO, [AGNO, MES, DIA, HORA, MINUTO, SEGUNDO]):-
	number(AGNO), number(MES), number(DIA), number(HORA), number(MINUTO), number(SEGUNDO),
	MES > 0, MES =< 12,
	DIA > 0, DIA =< 31,
	HORA >= 0, HORA =< 24,
	MINUTO >= 0, MINUTO =< 60,
	SEGUNDO >= 0, SEGUNDO =< 60.

fechaYHoraGetAGNO([AGNO, _, _, _, _, _], AGNO).
fechaYHoraGetSEGUNDO([_, _, _, _, _, S], S).

car([X|_], X).
cdr([_|Y], Y).
cadr([_,SEG|_], SEG).