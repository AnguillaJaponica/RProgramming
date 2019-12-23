#include <Rcpp.h>
using namespace Rcpp;
// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
NumericVector rcpp_matrix(){
    //ベクトルの作成
    NumericVector v = {1,2,3,4};

    //属性dimに列数、行数をセット
    v.attr("dim") = Dimension(2, 2);

    //属性dimをセットしたベクトルをRに返す
    return v;
}