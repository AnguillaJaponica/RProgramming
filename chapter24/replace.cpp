#include <Rcpp.h>
using namespace Rcpp;
// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
void rcpp_replace(){
    //"ab"が初めて出現する箇所でのみ置換
    String s("abcdabcd");
    s.replace_first("ab", "AB");
    Rcout << s.get_cstring() << "\n"; // ABcdabcd

    //"ab"が最後に出現する箇所でのみ置換
    s="abcdabcd";
    s.replace_last("ab", "AB");
    Rcout << s.get_cstring() << "\n"; // abcdABcd

    //"ab"が出現するすべての箇所で置換
    s="abcdabcd";
    s.replace_all("ab", "AB");
    Rcout << s.get_cstring() << "\n"; // ABcdABcd
}