#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
List rcpp_lapply(List input, Function f) {
    // リストinputの各要素に関数fを適用した結果をリストとして返す

    // リストの要素数n
    R_xlen_t n = input.length();

    // 出力用に要素数がnのリストを作成する
    List out(n);

    // inputの各要素にfを適用してoutに格納する
    // fの戻り値の型は不明ですがリストには代入可能です
    for(R_xlen_t i = 0; i < n; ++i) {
        out[i] = f(input[i]);
    }

    return out;
}