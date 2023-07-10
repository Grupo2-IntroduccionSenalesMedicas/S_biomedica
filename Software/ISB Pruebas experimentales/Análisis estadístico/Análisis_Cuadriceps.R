#where is set the R folder
getwd()
#where do i want to have m R files
setwd("D:/Users/Tino/Desktop/señales biomedicas/Proyecto")
#whatis inside that folder
dir()

#aplicando T student
cuadriceps<-read.table("D:/Users/Tino/Desktop/señales biomedicas/Proyecto/Cuadriceps.txt",header=TRUE)

#Summary WAMP
summaryWAMP_Cuad <- by(cuadriceps$WAMP, cuadriceps$Participante, summary)
table_data <- do.call(rbind, summaryWAMP_Cuad)
rownames(table_data) <- c("Hipertrofia", "Normal", "SHA")
table_data <- as.data.frame(table_data)
# Save the table_data as a CSV file
write.csv(table_data, file = "summaryWAMP_Cuad.csv", row.names = TRUE)

#Summary MMAV
summaryMMAV_Cuad <- by(cuadriceps$MMAV, cuadriceps$Participante, summary)
table_data <- do.call(rbind, summaryMMAV_Cuad)
rownames(table_data) <- c("Hipertrofia", "Normal", "SHA")
table_data <- as.data.frame(table_data)
# Save the table_data as a CSV file
write.csv(table_data, file = "summaryMMAV_Cuad.csv", row.names = TRUE)

#Summary V3
summaryV3_Cuad <- by(cuadriceps$V3, cuadriceps$Participante, summary)
table_data <- do.call(rbind, summaryV3_Cuad)
rownames(table_data) <- c("Hipertrofia", "Normal", "SHA")
table_data <- as.data.frame(table_data)
# Save the table_data as a CSV file
write.csv(table_data, file = "summaryV3_Cuad.csv", row.names = TRUE)

#Summary WL
summaryWL_Cuad<- by(cuadriceps$WL, cuadriceps$Participante, summary)
table_data <- do.call(rbind, summaryWL_Cuad)
rownames(table_data) <- c("Hipertrofia", "Normal", "SHA")
table_data <- as.data.frame(table_data)
# Save the table_data as a CSV file
write.csv(table_data, file = "summaryWL_Cuad.csv", row.names = TRUE)

#Summary rms
summaryrms_Cuad <- by(cuadriceps$rms, cuadriceps$Participante, summary)
table_data <- do.call(rbind, summaryrms_Cuad)
rownames(table_data) <- c("Hipertrofia", "Normal", "SHA")
table_data <- as.data.frame(table_data)
# Save the table_data as a CSV file
write.csv(table_data, file = "summaryrms_Cuad.csv", row.names = TRUE)

#Summary media
summarymedia_Cuad <- by(cuadriceps$media, cuadriceps$Participante, summary)
table_data <- do.call(rbind, summarymedia_Cuad)
rownames(table_data) <- c("Hipertrofia", "Normal", "SHA")
table_data <- as.data.frame(table_data)
# Save the table_data as a CSV file
write.csv(table_data, file = "summarymedia_Cuad.csv", row.names = TRUE)

#normality tests
# Define the variables of interest
variables <- c("WAMP", "MMAV", "V3", "WL", "rms", "media")

# Define the groups of interest
groups <- c("Hipertrofia", "Normal", "SHA")

# Create an empty matrix to store the results
results <- matrix(nrow = length(variables), ncol = length(groups))
rownames(results) <- variables
colnames(results) <- groups

# Perform Shapiro-Wilk normality test for each variable and group
for (i in 1:length(variables)) {
  for (j in 1:length(groups)) {
    data <- cuadriceps[[variables[i]]][cuadriceps$Participante == groups[j]]
    result <- shapiro.test(data)
    results[i, j] <- result$p.value
  }
}

# Convert the matrix to a data frame
data <- as.data.frame(results)

# Save the results in a CSV file
write.csv(data, file = "shapiro_Cuadriceps.csv", row.names = FALSE)

#homogenety with function car
library(car)
leveneTest(cuadriceps$WAMP~cuadriceps$Participante)
leveneTest(cuadriceps$MMAV~cuadriceps$Participante)
leveneTest(cuadriceps$V3~cuadriceps$Participante)
leveneTest(cuadriceps$WL~cuadriceps$Participante)
leveneTest(cuadriceps$rms~cuadriceps$Participante)
leveneTest(cuadriceps$media~cuadriceps$Participante)


#kruskal.wallis
kruskal.test(cuadriceps$WAMP~cuadriceps$Participante)
kruskal.test(cuadriceps$MMAV~cuadriceps$Participante)
kruskal.test(cuadriceps$V3~cuadriceps$Participante)
kruskal.test(cuadriceps$WL~cuadriceps$Participante)
kruskal.test(cuadriceps$rms~cuadriceps$Participante)
kruskal.test(cuadriceps$media~cuadriceps$Participante)


K_Wallis_Cuadriceps <- data.frame(
  WAMP = kruskal.test(cuadriceps$WAMP ~ cuadriceps$Participante)$p.value,
  MMAV = kruskal.test(cuadriceps$MMAV ~ cuadriceps$Participante)$p.value,
  V3 = kruskal.test(cuadriceps$V3 ~ cuadriceps$Participante)$p.value,
  WL = kruskal.test(cuadriceps$WL ~ cuadriceps$Participante)$p.value,
  rms = kruskal.test(cuadriceps$rms ~ cuadriceps$Participante)$p.value,
  media = kruskal.test(cuadriceps$media ~ cuadriceps$Participante)$p.value
)
# Save the p-values in a CSV file
write.csv(K_Wallis_Cuadriceps, file = "K_Wallis_Cuadriceps.csv", row.names = FALSE)

# Save the p-values in a CSV file
write.csv(p_values, file = "p_values.csv", row.names = FALSE)
#kruskal.test(cuadriceps$desviacion_estandar~cuadriceps$Participante)
#kruskal.test(cuadriceps$amplitud~cuadriceps$Participante)
#kruskal.test(cuadriceps$potencia~cuadriceps$Participante)
#kruskal.test(cuadriceps$min_value~cuadriceps$Participante)
#kruskal.test(cuadriceps$max_value~cuadriceps$Participante)
#kruskal.test(cuadriceps$total_power~cuadriceps$Participante)
#kruskal.test(cuadriceps$median_freq~cuadriceps$Participante)
#kruskal.test(cuadriceps$f_max~cuadriceps$Participante)

#boxplot
boxplot(cuadriceps$WAMP~cuadriceps$Participante,horizontal = TRUE,ylab="Cuadriceps",xlab="WAMP",col=c("#F07C7C","#BEFF72","skyblue"))
boxplot(cuadriceps$MMAV~cuadriceps$Participante,horizontal = TRUE,ylab="Cuadriceps",xlab="MMAV",col=c("#F07C7C","#BEFF72","skyblue"))
boxplot(cuadriceps$V3~cuadriceps$Participante,horizontal = TRUE,ylab="Cuadriceps",xlab="V3",col=c("#F07C7C","#BEFF72","skyblue"))
boxplot(cuadriceps$WL~cuadriceps$Participante,horizontal = TRUE,ylab="Cuadriceps",xlab="WL",col=c("#F07C7C","#BEFF72","skyblue"))
boxplot(cuadriceps$rms~cuadriceps$Participante,horizontal = TRUE,ylab="Cuadriceps",xlab="RMS",col=c("#F07C7C","#BEFF72","skyblue"))
boxplot(cuadriceps$media~cuadriceps$Participante,horizontal = TRUE,ylab="Cuadriceps",xlab="Media",col=c("#F07C7C","#BEFF72","skyblue"))




library(vegan)

#pca
pcaload<-rda(cuadriceps[,14:17],scale=TRUE)
pcaload
biplot(pcaload,main='PCA')
ordihull(pcaload,groups=cuadriceps$Participante,show='Hipertrofia',col="blue")
ordihull(pcaload,groups=cuadriceps$Participante,show='Normal',col="green")
ordihull(pcaload,groups=cuadriceps$Participante,show='SHA',col="red")
ordihull(pcaload,groups=cuadriceps$Participante,show='Hipertrofia',col="blue",draw="polygon")
ordihull(pcaload,groups=cuadriceps$Participante,show='Normal',col="green",draw="polygon")
ordihull(pcaload,groups=cuadriceps$Participante,show='SHA',col="red",draw="polygon")
