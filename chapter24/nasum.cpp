#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
List rcpp_na_sum(){

    // NAを含む整数ベクトルを作成
    IntegerVector v1  = IntegerVector::create(1,NA_INTEGER,3);

    // Rcppで定義されたベクトルとスカラーの+演算子を適用
    IntegerVector res1 = v1 + 1;

    // 標準C++で定義されたintとintの+演算子を適用
    IntegerVector res2(3);
    for(int i=0; i<v1.length(); ++i){
        res2[i] = v1[i] + 1;
    }

    // 結果をリストで出力
    return List::create(Named("Rcpp plus", res1),
                        Named("C++  plus", res2));
}