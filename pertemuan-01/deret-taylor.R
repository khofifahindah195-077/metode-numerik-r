
# pertmuan 01 - Deret Taylor
# Nama : Khofiha Indra Parawansyah
# NIM : 195-077

# Fungsi untuk menghitung e^x dengan Deret Taylor
# e^x = 1 + x + x^2/2! + x^3/3! + ...

taylor_exp <- function(x, n) {
  hasil <- 0
  for (i in 0:n) {
    hasil <- hasil + (x^i) / factorial(i)
  }
  return(hasil)
}

# Contoh: hitung e^1 dengan 10 suku
x <- 1
n <- 10

hasil_taylor <- taylor_exp(x, n)
hasil_asli <- exp(x)

cat("Hasil Deret Taylor:", hasil_taylor, "\n")
cat("Hasil Asli exp(1) :", hasil_asli, "\n")
cat("Galat / Error    :", abs(hasil_asli - hasil_taylor), "\n")
