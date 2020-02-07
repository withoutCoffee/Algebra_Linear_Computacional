#Método da Substituição Reversa por recorrencia

function x = mtd_reversa(a,m,n,Ab)#(linhaInicial,linhas,colunas,matriz,)
  if(a <= m)
    x = (Ab(a,n)- Ab(a,a+1)*mtd_reversa(a+1,m,n,Ab))/Ab(a,a);
    printf("X%i = % i \n",a,x);
   else
    x = 0;
   endif
   
endfunction
