#include <Rcpp.h>
using namespace Rcpp;
// [[Rcpp::plugins(cpp11)]]

//lmモデルオブジェクトを受け取りRMSEを計算する
// [[Rcpp::export]]
double rcpp_rmse(List lm_model) {
    // S3はリストですので引数の型にはListを指定する

    //関数に与えられたオブジェクトがlmオブジェクトではない場合は
    //エラーメッセージを出力し実行を停止する
    if (! lm_model.inherits("lm")) stop("Input must be a lm() model object.");

    //残差（実測値 - 予測値）を取り出す
    NumericVector resid  = lm_model["residuals"];

    //残差の要素数
    R_xlen_t n = resid.length();

    //残差の平方和
    double rmse(0.0);
    for(double r : resid){
        rmse += r*r;
    }

    //残差平方和を要素数で割り、平方根を取る
    return(sqrt((1.0/n)*rmse));
}