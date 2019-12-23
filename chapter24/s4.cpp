#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
S4 rcpp_s4(){

    // Person クラスのオブジェクトを作成
    S4 x("Person");

    // スロットに値を設定
    x.slot("name")  = "Sewall Wright";
    x.slot("birth") = Date("1889-12-21");

    return(x);
}