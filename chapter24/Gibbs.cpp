#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
NumericMatrix GibbsRcpp(double b, int n, int t){
    NumericMatrix X(n,2);
    double x1 = 0.0, x2 = 0.0;
    double sd = sqrt(1-b*b);
    for(int i=0; i<n; ++i){
        for(int j=0; j<t; ++j){
            //正規分布乱数（平均, 標準偏差）
            x1 = R::rnorm(b*x2, sd);
            x2 = R::rnorm(b*x1, sd);
        }
        X(i,0) = x1;
        X(i,1) = x2;
    }
    return X;
}