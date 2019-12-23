#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
void rcpp_logical02(){

    // LogicalVectorの作成、v[2]はNAとなる
    LogicalVector v = LogicalVector::create(TRUE, FALSE, NA_LOGICAL);

    // LogicalVectorの要素をそのままif文で評価する
    for(int i=0; i<v.size();++i) {
        if(v[i]) Rprintf("v[%i] is evaluated as true.\n",i);
        else     Rprintf("v[%i] is evaluated as false.\n",i);
    }

    // 実行結果
    // LogicalVectorのNAはtrueと評価されることがわかる
    // v[0] is evaluated as true.
    // v[1] is evaluated as false.
    // v[2] is evaluated as true.
}