#Questão 11
#Métodos de escalonamento de Gauss com pivoteamento
function [A p] = algo341(A)
  [m,n] = size(A);
  p=zeros(n-1,1)
  for k = 1:(n-1)
   
    [r s] = max(abs(A(k:m,k)));
    s = s+k-1;
    
    #troca das linhas (swap)  
    aux = A(k,:);
    A(k,:) = A(s,:);#troca  linha do pivot pela com maior valro abs
    A(s,:) = aux;#troca linha  pela a do pivot
    p(k) = s;
    
    if(abs(A(k,k))> 10^-3)
      %linha_mudar = linha_mudar  - (valor/pivot) * linha_pivot
     linhas=k+1:n;
      A(linhas,k)=A(linhas,k)/A(k,k);
      A(linhas,linhas)=A(linhas,linhas)-A(linhas,k)*A(k,linhas);
    endif
  endfor
endfunction






