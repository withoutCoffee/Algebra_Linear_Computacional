clear
#Matrizes para teste
A = [1,2,3;
     1,3,5;
     5,2,1]
     
b = [1;2;3]
disp("Matriz escalonada")

#[U b]= eliminacao01(A,b)
#x = resolve01(A,b)
[p l u] = lu341modif(A)
x = sd00(l,b)





