"""

Además, recuerde que al valor del libro se le debe sumar el 19% del IVA, es decir, el valor
final del libro será igual al valor del libro menos descuento más
IVA. Son 100 libros y se debe calcular la sumatoria de todos los libros.
"""

class IngresoInformacion:
   def __init__(self):
      self.codigoLibro = input("ingrese el Código del libro: ")
      self.autorLibro = input("Ingrese el Autor del libro: ")
      self.tipoLectura = input("Ingrese Tipo de lectura del libro: A - B - C")
      self.precio = float(input("Ingrese Valor del libro: "))

   def Descuento (tipoLectura, descuento, valorLibro):
      if tipoLectura == "A" and valorLibro > 50000:
         descuento = float(0.07)
      elif tipoLectura == "B" and (valorLibro > 35000 and valorLibro <=50000):
         descuento = float(0.05)
      elif tipoLectura == "C":
         descuento = float(0)
      return descuento
   
   def ValorFinLibro (IVA,):
      IVA = valorLibro * 0.19
      return
   
   """Además, recuerde que al valor del libro se le debe sumar el 19% del IVA, 
   es decir, el valor final del libro será igual al valor del libro menos descuento 
   más IVA. Son 100 libros y se debe calcular la sumatoria de todos los libros.
"""





