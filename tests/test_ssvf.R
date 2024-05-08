source("~/Documents/GitHub/svfpackage2/R/ssvf.R")

# Usar datos de prueba
data <- read.table("~/Documents/GitHub/svfpackage/data/datos2.txt", header = TRUE, sep = ";")
data <- data.frame(x1 = c(1, 2, 3, 4), x2 = c(1, 3, 1, 2), y1 = c(5, 4, 3, 5), y2 = c(3, 1, 2, 4))

# Definición de inputs, outputs y otros parámetros
inputs <- c("x1", "x2")
outputs <- c("y1", "y2")
d <- 2
C <- 1
eps <- 0
method <- 'SSVF'

# Crear y mostrar el objeto SVF
ssvf <- SSVF(method, inputs, outputs, data, C, eps, d)
print(ssvf)

trained_svf <- train.SSVF(ssvf)

# Resolver el modelo y mostrar resultados
solution_svf <- solve(trained_svf)
