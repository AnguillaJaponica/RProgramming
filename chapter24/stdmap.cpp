#include <Rcpp.h>
using namespace Rcpp;
// [[Rcpp::plugins(cpp11)]]

#include <map>
#include <unordered_map>
// [[Rcpp::export]]
List std_map(){
    // map オブジェクトを作成する
    std::map<std::string, double> cpp_map;
    // 要素を追加する
    cpp_map["C"] = 3;
    cpp_map["B"] = 2;
    cpp_map["A"] = 1;

    // unordered_map オブジェクトを作成する
    std::unordered_map<std::string, double> cpp_unordered_map;
    // 要素を追加する
    cpp_unordered_map["C"] = 3;
    cpp_unordered_map["B"] = 2;
    cpp_unordered_map["A"] = 1;

    return List::create(cpp_map, cpp_unordered_map);

}