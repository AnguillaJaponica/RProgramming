#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
NumericVector my_fun(){
    // rnorm 関数を呼び出す
    Function f("rnorm");

    // 次の例は rnorm(n=5, mean=10, sd=2)と解釈される
    // 1番目の引数は位置にもとづきnに渡される
    // 2,3番目の引数は名前にもとづきsd,meanに渡される
    return f(5, Named("sd")=2, _["mean"]=10);
}