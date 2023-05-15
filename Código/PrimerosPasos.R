# Este es un script de R
# El símbolo de "#" es un comentario, no es parte del código 

## Creación, listado y remoción de objetos en memoria
# Asigar objetos: 
a<-20
20 -> a
a=20

# Almacenar variables en un objeto:
  
f1 <- "manzana"
f2 <- "pera"

---
## R cómo calculadora 

8+9 #sumas
1000-84 #restas
200/9 #división
5*10 #multiplicación
10^2 #exponenciales

## Operaciones con objetos

a=10
b=50
c=2

(a+b)^c


---
# Enlistar los objetos en el entorno
  
ls()
objects()

# Borrar objetos
#rm(a)
ls()

---
# Consultar el manual de ayuda en R
  
?ls()
?sum()
?cbind()


---
  ## Tipos de objetos en R (vectores)
  Si los objetos creados contienen un conjunto de datos del mismo tipo, esto es un vector.    
Los tipos de objetos o vectores sobre los que opera **R** son:  
  **Objetivos simples**
  - numeric: números reales o decimales
- integer: números enteros
- complex: números complejos
- character: carácteres
- factor: registrar datos cualitativos.
- logical: resultados lógicos (TRUE o FALSE)

Los objetos pueden combinarse para crear otros nuevos.  
Los objetos pueden tener otros objetos que los conforman, y adquirir una clase diferente:  
  **Objetivos compuestos**      
  - Listas
- Data frames
- Matrices
- Arreglos
---
  Para conocer la clase de cada objeto podemos emplear la función class() , por ejemplo

class(a)
class(f1)

---
  ## Objetivos simples
  **Numéricos**
  
precios <- c(20,50,100)
class(precios)

**Caracteres**
  
nombres <- c("Jose", "Pepe", "Mariana", "Daniel", "Oscar", "Paola")
class(nombres)

**Factor**
  
sexo <- factor(c("Femenino", "Masculino"))
class(sexo)
levels(sexo)

sexo <- c("Femenino", "Masculino")
class(sexo)
levels(sexo)



---
  **Lógicos**
  
x <- 1
y <- 2   
respuesta <- (x > y)      # ¿x es mayor que y?; guardar el resultado en el objeto r
respuesta            # imprimir el resultado

class(respuesta)       # clase del objeto respuesta



---
  ##Objetivos compuestos
  **Listas**
  
  ---
  class: chapter-slide
## Matrices
* Una matriz es una estructura rectangular, que contiene datos de un solo tipo.
* Son usadas principalmente en operaciones matemáticas y estadística.
* Para crear una matriz usaremos la función **matrix()**.
* Si usamos esta función sin proporcionar el número de renglones o columnas que
deseamos crear, por defecto hará el acomodo de los datos en una sola columna.

{r include=T}
matrix(1:15)

---
  
  Si especificamos el número de renglones que deseamos en la matriz, el arreglo
será diferente.


matrix(1:15, nrow = 3)


Notemos que los datos comienzan a llenar las columnas de arriba a abajo y de 
izquierda a derecha.
---
  
  Si le indicamos un número de columnas y renglones menor al número de datos, 
se usarán los que cubran los espacios en la matriz y el resto se descartará


matrix(1:15, nrow = 3, ncol = 3)


---
  Por otro lado, si le indicamos un número de columnas y renglones que sobrepasa
el número de datos disponibles, los datos se reciclan.


matrix(1:15, nrow = 4, ncol = 4)


---
  
  ## Concatenar elementos
  
  
#Crear un objeto que almacene el nombre de los estudiantes de un grupo
estudiantes <- c("Jose", "Pepe", "Mariana", "Daniel", "Oscar", "Paola")
print(estudiantes)
#Crear un objeto que almacene la edad de cada estudiante
edades <- c("10", "10", "9", "8", "9", "11")
print(edades)
#Crear un objeto con la estatura de los estudiantes
alturas <- c("119", "118", "110", "116", "111", "120")
print(alturas)




---
  ## Crear una tabla con la información
  
  
cbind(estudiantes,edades, alturas) #concatenamos los objetos por columnas
grupoA <- cbind(estudiantes,edades, alturas) # asignamos la salida de la función cbind, a un nuevo objeto
print(grupoA)
dim(grupoA) #dim() nos permite conocer las dimensiones de un objeto


---
  **Extraer información de una tabla**
  
  
print(grupoA)
grupoA[6,] #obtener la fila de la posición 6, correspondiente a la información de Paola
grupoA[,3] #obtener la columna de alturas de de todos los estudiantes
grupoA[6] #obtener el nombre del estudiante Paola

---
  
  
print(grupoA)
grupoA[6,3] #obtener la estatura de Paola 


# Obten la edad de Mariana
---
  
  