#include <Rcpp.h>
using namespace Rcpp;
// [[Rcpp::plugins(cpp11)]]

// [[Rcpp::export]]
double rcpp_log(double x) {
    if (x <= 0.0) {
        stop("'x' must be a positive value.");
    }
    return log(x);
}