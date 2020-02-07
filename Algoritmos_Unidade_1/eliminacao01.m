#Questão 04
#eliminacao01
#Métodos de escalonamento de Gauss
function [U b] = escalonamento_gauss(A,b)
  Ab = [A b];
  [m,n] = size(A);
  cont = 0;
  for k = 1:(n-1)
    
    pivot = Ab(k,k);
    #verifica se o pivot é nulo
    if  (abs(pivot) < 10**-3)
      [r s] = max(abs(Ab(k:m,k:k)));
      s = s+cont;
      
      aux = Ab(k,:);
      Ab(k,:) = Ab(s,:);#troca  linha do pivot pela com maior valro abs
      Ab(s,:) = aux;#troca linha  pela a do pivot
      pivot = Ab(k,k);
    endif
    cont = cont+1;
    
    for e = k+1:(n)
      %linha_mudar = linha_mudar  - (valor/pivot) * linha_pivot
      Ab(e,:) = Ab(e,:) - (Ab(e,k)/pivot)*Ab(k,:);
    endfor
    U = Ab(:,1:n);
    b = Ab(:,n+1:n+1);
  endfor
endfunction






