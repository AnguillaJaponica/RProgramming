#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
void rcpp_type(RObject x){
    if(is<NumericVector>(x)){
        if(Rf_isMatrix(x)) Rcout << "NumericMatrix\n"; // 行列の判別の例
        else Rcout << "NumericVector\n";
    }
    else if(is<IntegerVector>(x)){
        if(Rf_isFactor(x)) Rcout << "factor\n"; // 因子ベクトルの判別の例
        else Rcout << "IntegerVector\n";
    }
    else if(is<CharacterVector>(x))
        Rcout << "CharacterVector\n";
    else if(is<LogicalVector>(x))
        Rcout << "LogicalVector\n";
    else if(is<DataFrame>(x))
        Rcout << "DataFrame\n";
    else if(is<List>(x))
        Rcout << "List\n";
    else if(x.isS4())
        Rcout << "S4\n";
    else if(x.isNULL())
        Rcout << "NULL\n";
    else
        Rcout << "unknown\n";
}