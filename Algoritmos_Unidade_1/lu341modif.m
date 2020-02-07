#Questão 13
function [P L U] = algo341modif(A)
  [m,n] = size(A);
  L = eye(m,n);
  U = zeros(m,n); 
  P=eye(n);
  for k = 1:(n-1)
    [r s] = max(abs(A(k:m,k)));
    s = s+k-1;
    
    #troca das linhas (swap)
    A = swap(A,k,s);
    P = swap(P,k,s);  
    if(abs(A(k,k))> 10^-3)
      %linha_mudar = linha_mudar  - (valor/pivot) * linha_pivot
      linhas=k+1:n;
      L(linhas,k)=A(linhas,k)/A(k,k);
      A(linhas,:) = A(linhas,:)-L(linhas,k)*A(k,:);
    endif
  endfor
  U = A;
endfunction






