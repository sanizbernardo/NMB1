%{
Oefening 1
%}

disp('u(x, y) = 1');

F = fMatrix(@f1, @u1, 5);
disp('   F');
disp(F);
Fs = sineTransform(F);
disp('   Fs');
disp(Fs);
Us = calcU(Fs, 5);
disp('   Us');
disp(Us);
U = invTransform(Us);
Ut = complete(U, @u1, 5);
disp('   U');
disp(Ut);

disp('u(x, y) = 1 + x + y');

F = fMatrix(@f1_2, @u1_2, 5);
disp('   F');
disp(F);
Fs = sineTransform(F);
disp('   Fs');
disp(Fs);
Us = calcU(Fs, 5);
disp('   Us');
disp(Us);
U = invTransform(Us);
Ut = complete(U, @u1_2, 5);
disp('   U');
disp(Ut);

disp('u(x, y) = x^2 + y^2');

F = fMatrix(@f1_3, @u1_3, 5);
disp('   F');
disp(F);
Fs = sineTransform(F);
disp('   Fs');
disp(Fs);
Us = calcU(Fs, 5);
disp('   Us');
disp(Us);
U = invTransform(Us);
Ut = complete(U, @u1_3, 5);
disp('   U');
disp(Ut);

