#!/usr/bin/env Rscript

tbl <- read.table(file("stdin"),
                  header = FALSE,
                  sep = ":",
                  strip.white = TRUE)
db <- read.csv(file = "./books.csv")

desc <- as.integer(tbl$V2[2:3])
desc <- 1 - desc[1] / desc[2]
desc <- round(desc, 2)

warn <- db$Alerta[grep(tbl$V2[7], db$Libro)] * 1000

if (as.integer(tbl[2, 2]) <= warn) cat("\033[32m")

cat("Titulo: ", tbl[5, 2], "\n", sep = "")
cat("Precio: ", as.integer(tbl[2, 2]), "\n", sep = "")
if (desc > 0) {
  cat("Anterior: ", as.integer(tbl[3, 2]), "\n", sep = "")
  cat("Descuento: ", desc * 100, "%\n", sep = "")
}

if (as.integer(tbl[2, 2]) <= warn) cat("\033[0m")
