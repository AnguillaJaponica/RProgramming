#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
void rcpp_rcout(NumericVector v){
  // Rcoutにベクトル変数を与えると全要素を表示する
  Rcout << "The value of v : " << v << "\n";

  // エラーメッセージを表示する際はRcerrを用いる
  Rcerr << "Error message" << "\n";
}