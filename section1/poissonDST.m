function U = poissonDST(f, u, N)
% Berken F en trek de randvoorwaarden af
F = fMatrix(f, u, N);

% Bereken F tilde met sinustransformatie
Fs = sineTransform(F);

% Bereken U tilde
Us = calcU(Fs);

% Bereken U met inverse sinustransformatie
Ut = invTransform(Us);

% Vul U aan met de randvoorwaarden (die worden niet opgenomen in de eerste berekeningen omdat die al gekend zijn)
U = complete(Ut, u);

%{
Geef functies mee met @f, randvoorwaarden met @u, N is de dimensie van de
matrix.

Voorbeeld:
Om u te zoeken voor de eerste functie doe je poissonDST(@f1, @u1, N)

@f1 en @u1 zijn voor u(x, y) = 1
@f1_2 en @u1_2 zijn voor u(x, y) = x + y + 1
@f1_3 en @u1_3 zijn voor u(x, y) = x^2 + y^2
@f2 en @u2 zijn voor u(x, y) = exp(x + y)
@f3 en @u3 zijn voor Opgave 3
%}
end