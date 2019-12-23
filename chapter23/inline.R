# inlineパッケージをロードする
library("inline")

# C言語で関数定義する
signature <- c(x = "numeric")
body <- '
SEXP input = Rf_coerceVector(x, REALSXP);
SEXP result = PROTECT(allocVector(REALSXP, length(input)));

for (int i = 0; i < length(input); i++)
{
    REAL(result)[i] = REAL(input)[i] + 1;
}
UNPROTECT(1);

return result;
'
plusOne <- cfunction(sig = signature, body = body, language = "C")