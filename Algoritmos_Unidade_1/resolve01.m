#Questão 05

function x = resolve01(A,b)
  [U b] = eliminacao01(A,b);
  x = sr00(U,b);
endfunction
