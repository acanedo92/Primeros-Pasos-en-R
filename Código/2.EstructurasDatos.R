###############################################################################
# ESTRUCTURAS DE DATOS 
###############################################################################

# Tipos de objetos en R 

###############################################################################
# Objetos simples
###############################################################################
  # - numeric: números reales o decimales
  # - integer: números enteros
  # - complex: números complejos
  # - character: carácteres
  # - factor: registrar datos cualitativos.
  # - logical: resultados lógicos (TRUE o FALSE)

---
# Para conocer la clase de cada objeto podemos emplear la función class() , por ejemplo
# class(objetos)

---
###############
#Numéricos
###############  
precios <- c(20,50,100)
class(precios)

###############
# Caracteres
###############
  
nombres <- c("Jose", "Pepe", "Mariana", "Daniel", "Oscar", "Paola")
class(nombres)

###############
# Factores
###############  
sexo <- factor(c("Femenino", "Masculino"))
class(sexo)
levels(sexo)

###############
#Lógicos
###############
  
x <- 1
y <- 2   
respuesta <- (x > y)  # ¿x es mayor que y?; guardar el resultado en el objeto r
respuesta             # imprimir el resultado

class(respuesta)       # clase del objeto respuesta


---
###############################################################################  
## Objetos compuestos
###############################################################################
  # - Listas
  # - Data frames
  # - Matrices
  # - Arreglos
  
###############
# Listas
# Función list()
###############
  
Colecta <- list(especie = "Piper nigrum", muestras= 200,
                  sitio = c("Bosque Mesófilo", "Bosque Tropical","Selva") )
Colecta
class(Colecta)

###############
# Matrices
# Función matrix()
###############

matrix(1:15)
matrix(1:15, nrow = 3)
matrix(1:15, nrow = 3, ncol = 3)
matrix(1:15, nrow = 4, ncol = 4)
################################################################################
# TO/DO: Identifica las diferencias obtenidas en cada uno de los siguientes casos:
################################################################################


###############
# ARREGLOS
# SINTAXIS: array(datos, dimensiones)
###############
miarray <- array(data=letters[1:24], dim=c(3, 4, 2))
#Si queremos extraer la letra almacenada en la fila 1 y columna 3 de la segunda capa de miarray usamos el siguiente código:
miarray[1, 3, 2]
#Si queremos extraer la segunda capa completa usamos el siguiente código.
miarray[,, 2]

################################################################################
# TO/DO: Extrae la letra "k"
################################################################################


###############
# - Data frames
###############
df <- data.frame(  "id" = 1:4, 
  "profesion" = c("musico", "pintor", "enfermedo", "actor"), 
  "edad" = c(20, 30, 18, 32),
  "nombre" = as.character(c("Ana", "Pepe", "Maria", "Arturo")) )

df
class(df)

  
  
  