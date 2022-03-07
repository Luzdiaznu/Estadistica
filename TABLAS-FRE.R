
#_________tablas de frecuencia______
#utilizamos la matriz iris

#------------------------------------
#exploracion de la matriz 
#------------------------------------

#1.-exportación de matriz
data(iris)

#2.- exploracion de la matriz
dim(iris)


#3.- nombre de las columnas 
colnames(iris)

#4.- exploracion de especies 
iris$Species

#5.- tipos de variables 
str(iris)

#6.- en busca de valores perdidos
anyNA(iris)

#
# Generacion de tablas NO AGRUPADAS 
#

#7. convertir la matriz de datos a un data frame,
#se agrupan los valores para la variable pPetal.Length
# y se calcula la frecuencia absoluta 

tabla_Pl <- as.data.frame(table(Pl=iris$Petal.Length))

#2.- visualizacion de la tabla de contingencia de
#la variable Petal. length(PL) y su respectiva frecuencia 
#absoluta
tabla_Pl

#3. crear la tabla completa 
tabla1<-transform(tabla_Pl,
          FreqAc=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))
#.-----------------

#. tablas agrupadas 
#------
# nota: se debe tener previamente el cálculo 
#de la amplitud y el rango 

#1. Agrupacion de la variable en clases (8 clases)
# 8 renglones.
tabla_clases<-as.data.frame(table(Petal.length=factor(cut(iris$Petal.Length,breaks=8))))

tabla_clases

#2.- construccion de tabla completa
tabla2<-transform(tabla_clases,
                  FreqAc=cumsum(Freq),
                  Rel=round(prop.table(Freq),3),
                  RelAc=round(cumsum(prop.table(Freq)),3))
