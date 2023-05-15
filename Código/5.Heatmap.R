################################################################################
# SET DE DATOS PRUEBA, PAQUETERÍA heatmap()
#data()
data <- mtcars
heatmap(data)
heatmap(as.matrix(data))
heatmap(scale(as.matrix(data)))
heatmap(scale(as.matrix(data)), main = "Heatmap", col = topo.colors(16), margins = c(5,5))
library(RColorBrewer)
coul <- colorRampPalette(brewer.pal(8, "PiYG"))(25)
heatmap(scale(as.matrix(data)), main = "Heatmap", col = coul, margins = c(5,5))


################################################################################
# Matriz de Abundancias Calculadas con datos de RNA-Seq del transcriptoma de una especie arbórea
# Cargar y explorar los datos
data <- read.csv("AbundanceMatrix.TMM.fpkm.matrix", sep = "\t", header = T)
colnames(data) <- c("Unigenes" , "Hoja", "Fruto" ,"Tallo" ,"Raíz"  ,"Inf_1" ,"Inf_2")
rownames(data) <- data$Unigenes

SUB <- data[1:10000,]
SUB2 <- SUB[,2:7]

SUB3<- scale(SUB2)
heatmap(SUB3, main = "DEG en Transcriptoma C.D.", col = coul, margins = c(5,5), xlab= "Organos", ylab= "Unigenes")

### heatmap(as.matrix(data[1:10000,2:7]))  ### NO CORRER EN PC PERSONAL
#------------
# Guardar
png("Heatmap.png")
heatmap(SUB3, main = "DEG en Transcriptoma C.D.", col = coul, margins = c(5,5), xlab= "Organos", ylab= "Unigenes")
dev.off()
#------------


