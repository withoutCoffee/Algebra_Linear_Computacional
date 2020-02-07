#Questão 09
function [L U] = LU321(A)
  R = algo321(A);
  [m,n] = size(R);
  L = eye(m,n);
  U = zeros(m,n);
  for i=1:m
     U(i,i:n) = R(i,i:n);
  end
  for i=m:-1:2
    L(i,1:i-1) = R(i,1:i-1) ;
  end
endfunction
