#include <Rembedded.h>

int main(int argc, char *argv[])
{
    // R の実行環境を初期化する
    Rf_initEmbeddedR(argc, argv);
    // R の実行環境を終了する
    Rf_endEmbeddedR(0);

    return 0;
}