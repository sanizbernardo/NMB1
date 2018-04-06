%{
Oefening 1
%}

disp('Oefening 1.1');

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
disp('   U');
disp(U);

disp('Oefening 1.2');

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
disp('   U');
disp(U);

disp('Oefening 1.3');

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
disp('   U');
disp(U);

