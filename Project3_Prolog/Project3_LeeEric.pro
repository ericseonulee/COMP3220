% Eric Lee- szl0094
% Project 3

room(1, 2).
room(1, 7).
room(2, 8).
room(3, 8).
room(4, 8).
room(4, 9).
room(5, 6).
room(5, 9).
room(6, 9).
room(7, 8).
room(7, 9).
room(7, 10).
room(7, 11).
room(7, 12).
room(7, 13).
room(7, 14).
room(14, 15).
room(15, 16).

ringing(5).
ringing(9).
ringing(16).

connected(X, Y) :- room(X, Y) ; room(Y, X).

path_to_phone(Start, End, Path) :-
       travel(Start, End,[Start], Q),
       reverse(Q,Path).

travel(Start, End, P, [End|P]) :-
       connected(Start, End),
       ringing(End).

travel(Start, End, Visited, Path) :-
       connected(Start, Middle),
       Middle \== End,
       \+member(Middle, Visited),
       travel(Middle, End, [Middle|Visited], Path).

/* BONUS */

room(1, 2, 1).
room(1, 7, 1).
room(2, 8, 1).
room(3, 8, 1).
room(4, 8, 1).
room(4, 9, 1).
room(5, 6, 1).
room(5, 9, 1).
room(6, 9, 1).
room(7, 8, 1).
room(7, 9, 1).
room(7, 10, 1).
room(7, 11, 1).
room(7, 12, 1).
room(7, 13, 1).
room(7, 14, 1).
room(14, 15, 1).
room(15, 16, 1).

connected(X, Y, L) :- room(X, Y, L) ; room(Y, X, L).

path_to_phone(Start, End, Path, Length) :-
       travel(Start, End,[Start], Q, Length),
       reverse(Q,Path).

travel(Start, End, P, [End|P], L) :-
       connected(Start, End, L),
       ringing(End).
travel(Start, End, Visited, Path, L) :-
       connected(Start, Middle, Distance),
       Middle \== End,
       \+member(Middle, Visited),
       travel(Middle, End, [Middle|Visited], Path, L1),
       L is Distance+L1.

min_path_to_phone(Start, End, Path, Len) :-
   setof([P,L], path_to_phone(Start, End, P, L), Set),
   Set = [_|_], % fail if empty
   minimal(Set, [Path, Len]).

minimal([S|E], M) :- min(E, S, M).

min([], M, M).
min([[P, L]|E], [_,M], Min) :- L < M, !, min(E, [P, L], Min).
min([_|E], M, Min) :- min(E, M, Min).

max_path_to_phone(Start, End, Path, Len) :-
   setof([P,L], path_to_phone(Start, End, P, L), Set),
   Set = [_|_], % fail if empty
   maximal(Set, [Path, Len]).

maximal([S|E], M) :- max(E, S, M).

max([], M, M).
max([[P, L]|E], [_,M], Max) :- L > M, !, max(E, [P, L], Max).
max([_|E], M, Max) :- max(E, M, Max).
