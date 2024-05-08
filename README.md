
# svfpackage2

<!-- badges: start -->
<!-- badges: end -->

El objetivo de svfpackage2 es proporcionar una colección de funciones y herramientas para la realización de estimaciones de fornteras haciendo uso de el solver GLPK

## Installation

You can install the development version of svfpackage2 from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("salvamc10/svfpackage2")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(svfpackage2)
library(ROI)
library(ROI.plugin.glpk)
## basic example codes

# Usar datos de prueba
data(datos, package = "svfpackage")

# Definición de inputs, outputs y otros parámetros
inputs <- c("x1", "x2")
outputs <- c("y1")
d <- 2
C <- 1
eps <- 0
method <- 'SSVF'

# Crear y mostrar el objeto SVF
svf <- create_SVF(method, inputs, outputs, datos, C, eps, d)

trained_svf <- train.SSVF(svf)

# Resolver el modelo y mostrar resultados
solution_svf <- solve(trained_svf)
```

