#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
Datetime rcpp_datetime(){
    // 日時を指定して Datetime オブジェクトを作成する
    Datetime dt("2000-01-01 00:00:00");

    // 日時の要素を世界協定時で表示する
    Rcout << "getYear " << dt.getYear() << "\n";
    Rcout << "getMonth " << dt.getMonth() << "\n";
    Rcout << "getDay " << dt.getDay() << "\n";

    Rcout << "getHours " << dt.getHours() << "\n";
    Rcout << "getMinutes " << dt.getMinutes() << "\n";
    Rcout << "getSeconds " << dt.getSeconds() << "\n";

    Rcout << "getMicroSeconds " << dt.getMicroSeconds() << "\n";
    Rcout << "getWeekday " << dt.getWeekday() << "\n";
    Rcout << "getYearday " << dt.getYearday() << "\n";
    Rcout << "getFractionalTimestamp " << dt.getFractionalTimestamp() << "\n";

    return dt;
}