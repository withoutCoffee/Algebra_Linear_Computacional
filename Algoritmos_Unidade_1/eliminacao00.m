#Questão 01
#Escalonamento de Gauss sem troca de linhas

function [U b] = eliminacao00(A,b)
  Ab = [A b];
  [m n] = size(Ab);
  
  for k = 1: n-1
    pivot = Ab(k,k);#pivot 
    
     for i=k+1 : n-1
      #linha_mudar = linha_mudar  - (valor/pivot) * linha_pivot  
      Ab(i,:) =  Ab(i,:) - (Ab(i,k)/pivot)*Ab(k,:);
    endfor
  endfor
  U = Ab(:,1:n-1);
  b = Ab(:,n:n);
endfunction
