#resolve00
#C�digo da quest�o 03
function x = resolve00(A,b)
  [U b] = eliminacao00(A,b);
  x = sr00(U,b);
endfunction
