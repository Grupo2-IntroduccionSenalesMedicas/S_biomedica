#where is set the R folder
getwd()
#where do i want to have m R files
setwd("D:/Users/Tino/Desktop/señales biomedicas/Proyecto")
#whatis inside that folder
dir()

#aplicando T student
femorales<-read.table("D:/Users/Tino/Desktop/señales biomedicas/Proyecto/Femorales.txt",header=TRUE)

#Summary WAMP
summaryWAMP_Fem <- by(femorales$WAMP, femorales$Participante, summary)
table_data <- do.call(rbind, summaryWAMP_Fem)
rownames(table_data) <- c("Hipertrofia", "Normal", "SHA")
table_data <- as.data.frame(table_data)
# Save the table_data as a CSV file
write.csv(table_data, file = "summaryWAMP_Fem.csv", row.names = TRUE)

#Summary MMAV
summaryMMAV_Fem <- by(femorales$MMAV, femorales$Participante, summary)
table_data <- do.call(rbind, summaryMMAV_Fem)
rownames(table_data) <- c("Hipertrofia", "Normal", "SHA")
table_data <- as.data.frame(table_data)
# Save the table_data as a CSV file
write.csv(table_data, file = "summaryMMAV_Fem.csv", row.names = TRUE)

#Summary V3
summaryV3_Fem <- by(femorales$V3, femorales$Participante, summary)
table_data <- do.call(rbind, summaryV3_Fem)
rownames(table_data) <- c("Hipertrofia", "Normal", "SHA")
table_data <- as.data.frame(table_data)
# Save the table_data as a CSV file
write.csv(table_data, file = "summaryV3_Fem.csv", row.names = TRUE)

#Summary WL
summaryWL_Fem <- by(femorales$WL, femorales$Participante, summary)
table_data <- do.call(rbind, summaryWL_Fem)
rownames(table_data) <- c("Hipertrofia", "Normal", "SHA")
table_data <- as.data.frame(table_data)
# Save the table_data as a CSV file
write.csv(table_data, file = "summaryWL_Fem.csv", row.names = TRUE)

#Summary rms
summaryrms_Fem <- by(femorales$rms, femorales$Participante, summary)
table_data <- do.call(rbind, summaryrms_Fem)
rownames(table_data) <- c("Hipertrofia", "Normal", "SHA")
table_data <- as.data.frame(table_data)
# Save the table_data as a CSV file
write.csv(table_data, file = "summaryrms_Fem.csv", row.names = TRUE)

#Summary media
summarymedia_Fem <- by(femorales$media, femorales$Participante, summary)
table_data <- do.call(rbind, summarymedia_Fem)
rownames(table_data) <- c("Hipertrofia", "Normal", "SHA")
table_data <- as.data.frame(table_data)
# Save the table_data as a CSV file
write.csv(table_data, file = "summarymedia_Fem.csv", row.names = TRUE)

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
    data <- femorales[[variables[i]]][femorales$Participante == groups[j]]
    result <- shapiro.test(data)
    results[i, j] <- result$p.value
  }
}

# Convert the matrix to a data frame
data <- as.data.frame(results)

# Save the results in a CSV file
write.csv(data, file = "shapiro_Femorales.csv", row.names = FALSE)

#homogenety with function car
library(car)
library(dplyr)
leveneTest(femorales$WAMP~femorales$Participante)
leveneTest(femorales$MMAV~femorales$Participante)
leveneTest(femorales$V3~femorales$Participante)
leveneTest(femorales$WL~femorales$Participante)
leveneTest(femorales$rms~femorales$Participante)
leveneTest(femorales$media~femorales$Participante)

#kruskal.wallis
kruskal.test(femorales$WAMP~femorales$Participante)
kruskal.test(femorales$MMAV~femorales$Participante)
kruskal.test(femorales$V3~femorales$Participante)
kruskal.test(femorales$WL~femorales$Participante)
kruskal.test(femorales$rms~femorales$Participante)
kruskal.test(femorales$media~femorales$Participante)

# Perform the Kruskal-Wallis tests and extract the p-values
K_Wallis_Femoral <- data.frame(
  WAMP = kruskal.test(femorales$WAMP ~ femorales$Participante)$p.value,
  MMAV = kruskal.test(femorales$MMAV ~ femorales$Participante)$p.value,
  V3 = kruskal.test(femorales$V3 ~ femorales$Participante)$p.value,
  WL = kruskal.test(femorales$WL ~ femorales$Participante)$p.value,
  rms = kruskal.test(femorales$rms ~ femorales$Participante)$p.value,
  media = kruskal.test(femorales$media ~ femorales$Participante)$p.value
)
# Save the p-values in a CSV file
write.csv(K_Wallis_Femoral, file = "K_Wallis_Femoral.csv", row.names = FALSE)

#boxplot
boxplot(femorales$WAMP~femorales$Participante,horizontal = TRUE,ylab="Femorales",xlab="WAMP",col=c("#F07C7C","#BEFF72","skyblue"))
boxplot(femorales$MMAV~femorales$Participante,horizontal = TRUE,ylab="Femorales",xlab="MMAV",col=c("#F07C7C","#BEFF72","skyblue"))
boxplot(femorales$V3~femorales$Participante,horizontal = TRUE,ylab="Femorales",xlab="V3",col=c("#F07C7C","#BEFF72","skyblue"))
boxplot(femorales$WL~femorales$Participante,horizontal = TRUE,ylab="Femorales",xlab="WL",col=c("#F07C7C","#BEFF72","skyblue"))
boxplot(femorales$rms~femorales$Participante,horizontal = TRUE,ylab="Femorales",xlab="RMS",col=c("#F07C7C","#BEFF72","skyblue"))
boxplot(femorales$media~femorales$Participante,horizontal = TRUE,ylab="Femorales",xlab="Media",col=c("#F07C7C","#BEFF72","skyblue"))




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
