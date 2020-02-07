#Questão 08
function A = algo321(A)
  [m,n] = size(A);
  for k = 1:(n-1)
    pivot = A(k,k);
    for e = k+1:(n)
      A(e,k) = (A(e,k)/pivot);
      %linha_mudar = linha_mudar  - (valor/pivot) * linha_pivot
      A(e,k+1:n) = A(e,k+1:n) - (A(e,k)/pivot)*A(k,k+1:n);
    endfor
  endfor
  
endfunction






