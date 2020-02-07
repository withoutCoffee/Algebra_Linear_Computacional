function A = swap(A,i,l)
  #troca das linhas (swap)  
  aux = A(i,:);
  A(i,:) = A(l,:);#troca  linha do pivot pela com maior valro abs
  A(l,:) = aux;#troca linha  pela a do pivot
  
endfunction