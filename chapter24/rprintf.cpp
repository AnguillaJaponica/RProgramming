#include <Rcpp.h>
using namespace Rcpp;
// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
void rcpp_rprintf(NumericVector v){
    // Rprintf でベクトルの全要素を表示する
    for(int i=0; i<v.length(); ++i){
        Rprintf("the value of v[%i] is %f \n", i, v[i]);
    }
}