% Write a prolog program to calculate the sum of two numbers.
sum(X,Y,Z) :- Z is X+Y.
sum2:- write("First number : "),read(X),write("Second Number : "),read(Y),Z is X+Y.

% Write a Prolog program to implement max(X, Y, M) so that M is the maximum of two numbers X and Y.
max(X,Y,Z):-  X>=Y, Z = X.
max(X,Y,Z):-  Z = Y.

% Write a program in PROLOG to implement factorial (N, F) where F represents the factorial of a number N.
fact(0,1).
fact(N,F):-(N1 is N-1,fact(N1,F1),F is N*F1).

% Write a program in PROLOG to implement generate_fib(N,T) where T represents the Nth term of the fibonacci series.
fib(0,0).
fib(1,1).
fib(N,T):- N>1,N1 is N-1,N2 is N-2,fib(N1, F1),fib(N2, F2),T is F1+F2.

% Write a Prolog program to implement GCD of two numbers
gcd(X, X, X).
gcd(X, Y, D) :- Y > X, gcd(Y, X, D).
gcd(X, Y, D) :- Z is X mod Y, Z = 0, D is Y.
gcd(X, Y, D) :- Z is X mod Y, Z > 0, gcd(Y, Z, D).

% Write a Prolog program to implement power (Num,Pow, Ans) : where Num is raised to the power Pow to get Ans.
power(_, 0, 1).
power(Num, Pow, Ans) :-Pow > 0,Pow1 is Pow - 1,power(Num, Pow1, Ans1),Ans is Num * Ans1.

% Prolog program to implement multi (N1, N2, R) : where N1 and N2 denotes the numbers to be multiplied and R represents the result
multi(0, _, 0).
multi(N1, N2, R) :- N1 > 0, N is N1 - 1, multi(N, N2, R1), R is R1 + N2.

% Write a Prolog program to implement memb(X, L): to check whether X is a member of L or not.
memb(X, [X|_]).
memb(X, [_|T]) :- memb(X, T).

% Write a Prolog program to implement conc (L1, L2, L3) where L2 is the list to be appended with L1 to get the resulted list L3.
conc([], L2, L2).
conc([H|T], L2, [H|L3]) :- conc(T, L2, L3).

% Write a Prolog program to implement reverse (L, R) where List L is original and List R is reversed list.
reverse([], []).
reverse([H|T], R) :- reverse(T, R1), conc(R1, [H], R).
