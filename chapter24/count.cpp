#include <Rcpp.h>
using namespace Rcpp;

#include <algorithm>
// [[Rcpp::export]]
int rcpp_count(){
    // 文字列ベクトルの作成
    CharacterVector v =
        CharacterVector::create("A", "B", "A", "C", NA_STRING);

    // 文字列ベクトルvから値が"A"である要素の数を数える
    return std::count(v.begin(), v.end(), "A"); // 2
}