#include <Rcpp.h>
using namespace Rcpp;
// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
IntegerVector rcpp_factor(){
    // factor の作成
    IntegerVector v = {1,2,3,1,2,3};
    CharacterVector ch = {"A","B","C"};
    v.attr("class") = "factor";
    v.attr("levels") = ch;
    return v;
}