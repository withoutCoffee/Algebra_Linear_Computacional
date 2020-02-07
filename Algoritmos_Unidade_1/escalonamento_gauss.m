#Métodos de escalonamento de Gauss
function Ab = escalonamento_gauss(A,b)
  Ab = [A b];
  [m,n] = size(A);
  
  for k = 1:(n-1)
    
    pivot = Ab(k,k);
    #verifica se o pivot é nulo
    if  (pivot < 10**-3)
      #[r s] = max(abs(Ab))
      #enquanto o pivot for nulo procuro outro
      while ( abs(Ab(k,k)) <10**-6)
        
        r = randi([1,n]);
        aux = Ab(k,:);
        
        Ab(k,:) = Ab(r,:);#troca  linha do pivot por outra aleatória
        Ab(r,:) = aux;#troca linha aleatória por a do pivot
        end
      pivot = Ab(k,k);
    endif
    
    for e = k+1:(n)
      %linha_mudar = linha_mudar  - (valor/pivot) * linha_pivot
      Ab(e,:) = Ab(e,:) - (Ab(e,k)/pivot)*Ab(k,:);
     endfor
     
  endfor
endfunction





