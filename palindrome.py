Palabra = input("Ingrese una palabra ")
A= int(len(Palabra))
D= int(len(Palabra))-1
B = []
C = []

for i in range (0,A):
   B.append(Palabra[i])
   i =+1
print("Palabra ingresada: ",B)

#colocar las letras de la palabra en forma inversa en el vector C, con while
while ( D>= 0):
    #Pega la letra de Palabra en la posicion D en C
    C.append(Palabra[D])
    D = D - 1
print("Palabra inversa   :", C)

#comparar la Palabra con el Inverso, si son iguales es palíndromo
if B == C:
    print("Si es Palindrome, la palabra ingresada es igual a su inverso")
else:
    print("No es Palindrome, porque su inverso no es igual a la palabra ingresada")































"""
#colocar las letras de la palabra en forma inversa en el vector C, con for
for j in range (len(Palabra),0,-1):
   C.append(B[j-1])
print(C)"""


"""
#comparar la Palabra con el Inverso, ::devuelve el inverso de Palabra, desde la última posición
if str(Palabra) == str(Palabra)[::-1] :
    print("Si es Palindrome, la palabra ingresada es igual a su inverso")
else:
    print("No es Palindrome, porque su inverso no es igual a la palabra ingresada")
"""

