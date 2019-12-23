# Rcppのソースを文字列として保存
s <- "#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
double rcpp_sum(NumericVector v){
    double sum = 0;
    for(int i=0; i<v.length(); ++i){
        sum += v[i];
    }
    return sum;
}"

# コンパイル&ロード
Rcpp::sourceCpp(code = s)