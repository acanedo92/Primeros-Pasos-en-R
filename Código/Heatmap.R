
## SET DE DATOS PRUEBA, PAQUETERÍA heatmap()
data <- mtcars
heatmap(data)
heatmap(as.matrix(data))
heatmap(scale(as.matrix(data)))
heatmap(scale(as.matrix(data)), main = "Heatmap", col = topo.colors(16), margins = c(5,5))
library(RColorBrewer)
coul <- colorRampPalette(brewer.pal(8, "PiYG"))(25)
heatmap(scale(as.matrix(data)), main = "Heatmap", col = coul, margins = c(5,5))
gplots::heatmap.2(data
                  , dendrogram = "none"
                  , Rowv = FALSE
                  , Colv = FALSE
                  , scale = "column"
                  , trace = "none"
                  , margins = c(10,12)
                  , cexRow = 1
                  , cexCol = 1
                  , col = colors
                  , density.info = "none"
                  , keysize = 0.75
                  , lmat = rbind(c(3,4), c(2,1)))


#####
data <- read.csv("AbundanceMatrix.TMM.fpkm.matrix", sep = "\t", header = T)
colnames(data) <- c("Unigenes" , "Hoja", "Fruto" ,"Tallo" ,"Raíz"  ,"Inf_1" ,"Inf_2")
rownames(data) <- data$Unigenes

SUB <- data[1:10000,]
SUB2 <- SUB[,2:7]

SUB3<- scale(SUB2)
heatmap(SUB3, main = "DEG en Transcriptoma C.D.", col = coul, margins = c(5,5), xlab= "Organos", ylab= "Unigenes")

#------------
# Guardar
png("Heatmap.png")
heatmap(SUB3, main = "DEG en Transcriptoma C.D.", col = coul, margins = c(5,5), xlab= "Organos", ylab= "Unigenes")
dev.off()
#------------


