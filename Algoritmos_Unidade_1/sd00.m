#Método da substituição direta
#Código da questão 15
function x = sd00(L,b)
  Ab = [L b];
  [m n] = size(Ab);
  
  x = [(b(1))/L(1,1)]
  for i = 2:m
    h=0;
    for j = i:-1:2
      h = h + (x(j-1)*L(i,j-1));
    endfor
    h = ((b(i)-h)/L(i,i));
    x = [x;h];
  endfor
endfunction
