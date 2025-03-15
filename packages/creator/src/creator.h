#if _WIN32
#include <windows.h>
#else
#include <pthread.h>
#include <unistd.h>
#endif

#if _WIN32
#define FFI_PLUGIN_EXPORT __declspec(dllexport)
#else
#define FFI_PLUGIN_EXPORT __attribute__((visibility("default"))) __attribute__((used))
#endif

/// For some reason, `dart run ffigen` fail to generate
/// when `extern "C"` is used. But iOS bindings fails without it.
/// So, I need to remove it to generate and add again to compile.
extern "C" FFI_PLUGIN_EXPORT const char *createMinefield(
    intptr_t inSeed,
    intptr_t sliceWidth,
    intptr_t inWidth,
    intptr_t inHeight,
    intptr_t inMines,
    intptr_t inX,
    intptr_t inY);
