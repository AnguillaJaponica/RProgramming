#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
NumericVector rcpp_package_function(){
    // statパッケージの名前空間を取得
    Environment stats = Environment::namespace_env("stats");

    // statパッケージの rnorm 関数を取得
    Function rnorm = stats["rnorm"];

    // rnorm(n=5, mean=10, sd=2) を実行
    return rnorm(Named("n", 5), Named("mean", 10), Named("sd", 2));
}