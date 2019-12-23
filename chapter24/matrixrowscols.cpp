#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
DataFrame matix_rows_cols(NumericMatrix m){
    // 行列から値が0ではない要素の列番号と行番号を返す
    // 簡単のため行列はNAを含まない前提とする

    // 行数 I 、列数 J
    int I = m.rows();
    int J = m.cols();

    // 結果を標準C++コンテナのvectorに格納します
    std::vector<int> rows, cols; //行番号と列番号を格納する変数

    // 要素の数は最大で行列mの要素数になり得るので
    // その分のメモリを先に確保
    rows.reserve(m.length());
    cols.reserve(m.length());

    // 行列mのすべての要素にアクセスして
    // 値が0ではない要素の行番号と列番号を保存
    for(int i=0; i<I; ++i){
        for(int j=0; j<J; ++j){
            if(m(i,j)!=0.0){
                rows.push_back(i+1);
                cols.push_back(j+1);
            }
        }
    }

    // 結果をデータフレームとして返す
    return DataFrame::create(Named("rows", rows),
                             Named("cols", cols));
}