#include <Rcpp.h>
using namespace Rcpp;
// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
std::vector<double> times_two_std_vector(std::vector<double> v){ //暗黙的にas関数が呼ばれる

    for(double &x : v){
        x *= 2;
    }
    return v; //暗黙的にwrap関数が呼ばれる
}