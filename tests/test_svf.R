library(svfpackage2)

# Usar datos de prueba
data <- data.frame(x1 = c(1, 2, 3, 4), x2 = c(1, 3, 1, 2), y1 = c(5, 4, 3, 5), y2 = c(3, 1, 2, 4))

# Definir listas de inputs, outputs y la cantidad de particiones
inputs <- c("x1", "x2")
outputs <- c("y1", "y2")
C <- 1
eps <- 0
d <- 2
method <- 'SVF'

# Crear una instancia de la clase SVF
svf <- SVF(method, inputs, outputs, data, C, eps, d)

# Imprimir la instancia
print(svf)
