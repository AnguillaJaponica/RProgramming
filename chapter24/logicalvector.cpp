#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
void rcpp_logical01(){

    // NAを含んだLogicalVector の作成
    LogicalVector v = LogicalVector::create(TRUE,FALSE,NA_LOGICAL);

    // if文を使って論理ベクトルの要素の値を評価する
    for(int i=0; i<v.size(); ++i) {
        if (v[i] == TRUE)               Rprintf("v[%i] is TRUE.\n", i);
        if (v[i] == FALSE)              Rprintf("v[%i] is FALSE.\n", i);
        if (v[i] == NA_LOGICAL)         Rprintf("v[%i] is NA.\n", i);
        if (LogicalVector::is_na(v[i])) Rprintf("v[%i] is NA.\n", i);
    }

    // 実行結果
    // v[0] is TRUE.
    // v[1] is FALSE.
    // v[2] is NA.
    // v[2] is NA.
}