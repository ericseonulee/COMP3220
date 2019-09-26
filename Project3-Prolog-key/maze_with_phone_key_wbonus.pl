door(1,2,1).
door(1,7,1).
door(2,8,1).
door(3,8,1).
door(7,8,1).
door(7,9,1).
door(7,10,1).
door(7,11,1).
door(7,12,1).
door(7,13,1).
door(7,14,1).
door(8,4,1).
door(4,9,1).
door(9,6,1).
door(5,9,1).
door(5,6,1).
door(14,15,1).
door(15,16,1).


phone(5).
phone(9).
phone(16).

connected(X,Y,L):- door(X,Y,L);door(Y,X,L).

path_to_phone(A,B,Path,Len) :-
       move(A,B,[A],Q,Len), 
       reverse(Q,Path).

move(A,B,P,[B|P],L) :- 
       connected(A,B,L),
	   phone(B).
move(A,B,Visited,Path,L) :-
       connected(A,C,D),           
       C \== B,
       \+member(C,Visited),
       move(C,B,[C|Visited],Path,L1),
	   L is D + L1.  

min_path_to_phone(A,B,Path,Length) :-
   setof([P,L],path_to_phone(A,B,P,L),Set),
   Set = [_|_], % fail if empty
   minimal(Set,[Path,Length]).

minimal([F|R],M) :- min(R,F,M).

% minimal path
min([],M,M).
min([[P,L]|R],[_,M],Min) :- L < M, !, min(R,[P,L],Min). 
min([_|R],M,Min) :- min(R,M,Min).

max_path_to_phone(A,B,Path,Length) :-
   setof([P,L],path_to_phone(A,B,P,L),Set),
   Set = [_|_], % fail if empty
   maximum(Set,[Path,Length]).

maximum([F|R],M) :- maximum(R,F,M).

% maximum path
maximum([],M,M).
maximum([[P,L]|R],[_,M],Max) :- L > M, !, maximum(R,[P,L],Max). 
maximum([_|R],M,Max) :- maximum(R,M,Max).
