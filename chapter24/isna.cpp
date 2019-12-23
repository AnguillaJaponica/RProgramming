#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
void rcpp_is_na() {
    // NA,NaN,Inf,-Infを含んだベクトルの作成
    NumericVector v =
        NumericVector::create(1, NA_REAL, R_NaN, R_PosInf, R_NegInf);

    // ベクトルの要素ごとに値を判定
    int n = v.length();
    for (int i = 0; i < n; ++i) {
        if(NumericVector::is_na(v[i]))
            Rprintf("v[%i] is NA.\n", i);
        if(Rcpp::traits::is_nan<REALSXP>(v[i]))
            Rprintf("v[%i] is NaN.\n", i);
        if(Rcpp::traits::is_infinite<REALSXP>(v[i]))
            Rprintf("v[%i] is Inf or -Inf.\n", i);
    }
}