#Método da substituição reversa
#Código da questão 02
function x = sr00(U,b)
  Ab = [U b]
  [m n] = size(Ab);
  x = [];
  for i = m:-1:1
    h=0;
    l=1;
    for j = i+1:m
      h = h + (x(l)*U(i,j));
      l = l+1;
    endfor
    h = (b(i)-h)/U(i,i);
    x = [h;x];
  endfor
endfunction
