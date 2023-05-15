 ## CARGAR BASES DE DATOS
  
 #Conoce tu directorio actual de trabajo, copia la estructura de la dirección y modificala de acuerdo al sitio dónde se encuentren tus archivos.
  getwd() 
#Establece tu directorio de trabajo

#Ejemplo: Estoy en escritorio ("/home/anahi/Escritorio/") y quiero moverme al Repositorio del Curso: 
setwd("/home/anahi/Escritorio/Primeros-Pasos-en-R/") 


---
  ## Manos a la obra: Obtén tu directorio de trabajo actual y cambialo al diretorio DataBases 
  
  # setwd("/home/usuario/Escritorio/Primeros-Pasos-en-R/DataBases/") #establecer la ruta al directorio en que se encuentran los archivos que deseas leer
  
  ## Archivos .txt**  
  # Los archivos con extensión .txt pueden ser leídos empleando la función read.table().  
  # Aunque no son tan comunes para leer en R.
  
  ~~~
  read.table(file, header = FALSE, sep = "", quote = "\"'",
             dec = ".", numerals = c("allow.loss", "warn.loss", "no.loss"),
             row.names, col.names, as.is = !stringsAsFactors,
             na.strings = "NA", colClasses = NA, nrows = -1,
             skip = 0, check.names = TRUE, fill = !blank.lines.skip,
             strip.white = FALSE, blank.lines.skip = TRUE,
             comment.char = "#",
             allowEscapes = FALSE, flush = FALSE,
             stringsAsFactors = FALSE,
             ~~~
               
               
arboles <- read.table("DataBases/Arboles.txt", sep = " ", header = T)
head(arboles)
             
 ## Archivos .csv**  
# Los archivos con extensión .csv pueden ser leídos empleando la función read.csv().  
             
read.csv(file, header = TRUE, sep = ",", quote = "\"",
    dec = ".", fill = TRUE, comment.char = "", ...)
             
 head(read.csv("DataBases/Poblaciones.csv"))
             
             
 head(read.csv("DataBases/Poblaciones.csv", sep = "\t", header = T))
             