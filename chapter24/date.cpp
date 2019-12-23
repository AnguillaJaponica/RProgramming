#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
DateVector rcpp_date1(){
    // Date の作成
    Date d1("2000-01-01");
    Date d2("2000-02-01");

    int  i  = d2 - d1; //日付の差分（日数）
    bool b  = d2 > d1; //日付の比較

    // d1に1日加算した結果を日付ベクトルに代入する
    DateVector date(1);
    date[0] = d1 + 1;

    return date; // 2000-01-02
}