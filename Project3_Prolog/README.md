# Traversal with Prolog Project

This is a program in Prolog that will tell us how to get from one\par
room of a one-story building, to any other room in that building (if it\rquote s possible), by telling us all of the rooms we must go through to get to the destination room.

### Quick start
** Make sure you have latest and correct version of Gnu-Prolog downloaded. This project is tested with Windows 10.

# Table of Contents
* [Installing/Running the app](#installing-running-the-app)
* [API Intro](#api-intro)
* [Author](#author)

#### Installing/ Running the app

There is no extra installation needed instead of installing Gnu-Prolog.
___

#### API Intro
Phone definitions

```
ringing(5).
ringing(9).
ringing(16).
```

Rules
There are few rules:

```
/* Bi-directionallity of rooms */
connected(X, Y) :- room(X, Y) ; room(Y, X).

/* Recurssion*/
path_to_phone(Start, End, Path) :-
       travel(Start, End,[Start], Q),
       reverse(Q,Path).

travel(Start, End, P, [End|P]) :-
       connected(Start, End),
       ringing(End).

travel(Start, End, Visited, Path) :-
       connected(Start, Middle),
       Middle \\== End,
       \\+member(Middle, Visited),
       travel(Middle, End, [Middle|Visited], Path).
```

___

## Author
 [Eric Lee](/LICENSE)
