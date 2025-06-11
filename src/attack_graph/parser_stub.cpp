#include <cstdio>

extern "C" {
    FILE *yyin = nullptr;
    int yyparse(void) {
        // Parser stub used when flex/bison are unavailable.
        // It consumes no input and always succeeds.
        return 0;
    }
}
