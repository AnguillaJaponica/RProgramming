library("inline")

# Rcppのコードとinlineパッケージで関数を定義する
signature <- c(x = "numeric")
body <- '
Rcpp::NumericVector sq(x);
int length = sq.size();
for (int i = 0; i < length; i++)
{
    sq[i] = sq[i] * sq[i];
}
return sq;
'
square <- cxxfunction(sig = signature, body = body, plugin = "Rcpp")