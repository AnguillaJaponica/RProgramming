#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
NumericVector fib(int length)
{
    NumericVector result(length);

    double a = 0, b = 1;
    for (int i = 0; i < length; i++)
    {
        switch (i)
        {
        case 0:
            result[i] = a;
            break;
        case 1:
            result[i] = b;
            break;
        default:
            double tmp = a + b;
            result[i] = tmp;
            a = b;
            b = tmp;
            break;
        }
    }

    return(result);
}