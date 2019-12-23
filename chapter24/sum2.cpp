#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
double rcpp_sum(NumericVector x) {
  double total = 0;
  for(NumericVector::iterator i = x.begin(); i != x.end(); ++i) {
    total += *i;
  }
  return total;
}