edge('Makkah', 'Madinah').
edge('Madinah', 'Makkah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').
edge('Taif', 'Tabuk').
edge('Tabuk', 'Taif').
edge('Taif', 'Dammam').
edge('Makkah', 'Riyadh').
edge('Al-Qatif', 'Madinah').
edge('Al-Qatif', 'Dammam').
edge('Dammam', 'Al-Qatif').
edge('Dammam', 'Riyadh').
edge('Riyadh', 'Dammam').

travel(From, To, Path) :-
    path(From, To, [From], ReversePath),
    reverse(ReversePath, Path).

path(From, To, Visited, [To|Visited]) :-
    edge(From, To).

path(From, To, Visited, Path) :-
    edge(From, Next),
    \+ member(Next, Visited),
    path(Next, To, [Next|Visited], Path).
