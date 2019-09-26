door(1,2).
door(1,7).
door(2,8).
door(3,8).
door(7,8).
door(7,9).
door(7,10).
door(7,11).
door(7,12).
door(7,13).
door(7,14).
door(8,4).
door(4,9).
door(9,6).
door(5,9).
door(5,6).
door(14,15).
door(15,16).


phone(5).
phone(9).
phone(16).

connected(X,Y):- door(X,Y);door(Y,X).

path_to_phone(A,B,Path) :-
       move(A,B,[A],Q), 
       reverse(Q,Path).

move(A,B,P,[B|P]) :- 
       connected(A,B),
	   phone(B).
move(A,B,Visited,Path) :-
       connected(A,C),           
       C \== B,
       \+member(C,Visited),
       move(C,B,[C|Visited],Path).  