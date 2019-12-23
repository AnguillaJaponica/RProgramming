#include <Rcpp.h>
using namespace Rcpp;
// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
DataFrame rcpp_df(){
    // ベクトルvを作成
    NumericVector v = {1,2};
    // データフレームdfを作成
    DataFrame df = DataFrame::create( Named("V1") = v,
                                      Named("V2") = clone(v));
    // ベクトルvを変更
    v = v*2;
    return df;
}