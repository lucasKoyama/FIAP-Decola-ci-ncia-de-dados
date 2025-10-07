# LucasHidekiOliveiraKoyama_RM566925_fase2_cap7
# Instala o pacote se não estiver instalado
if (!requireNamespace("readxl", quietly = TRUE)) {
  install.packages("readxl")
}

# Carrega o pacote
library(readxl)

# Ler o arquivo Excel
dados <- read_excel("base de dados.xlsx")
head(dados)

# Selecionar a variável quantitativa
preco <- dados$`Preço Mínimo`

# -------------------------------
# Medidas de Tendência Central
# -------------------------------
cat("\n--- Medidas de Tendência Central ---\n")
cat("Média:", mean(preco), "\n")
cat("Mediana:", median(preco), "\n")

# -------------------------------
# Medidas de Dispersão
# -------------------------------
cat("\n--- Medidas de Dispersão ---\n")
cat("Valor mínimo:", min(preco), "\n")
cat("Valor máximo:", max(preco), "\n")
cat("Amplitude total:", diff(range(preco)), "\n")

# -------------------------------
# Medidas Separatrizes
# -------------------------------
cat("\n--- Medidas Separatrizes ---\n")
cat("Quartis:\n")
print(quantile(preco, probs = c(0.25, 0.5, 0.75)))
cat("\nDecis:\n")
print(quantile(preco, probs = seq(0.1, 0.9, 0.1)))

# -------------------------------
# Análise Gráfica
# -------------------------------
cat("\n--- Análise Gráfica ---\n")
boxplot(preco, 
        main = "Boxplot do Preço Mínimo",
        ylab = "Preço (R$)", 
        col = "lightgreen")
