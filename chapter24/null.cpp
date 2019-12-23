#include <Rcpp.h>
using namespace Rcpp;
// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
List rcpp_null(){
    // 要素名がついたリストを作成する
    // 2つの要素のうち1つはNULLになっている
    List L = List::create(Named("x",NumericVector({1,2,3})),
                          Named("y",R_NilValue));

    // NULLの判定
    for(int i=0; i<L.length(); ++i){
        if(L[i]==R_NilValue) {
            Rprintf("L[%i] is NULL.\n\n", i+1);
        }
    }

    // オブジェクトの属性値（要素名）の値を消去する
    L.attr("names") = R_NilValue;

    return(L);
}