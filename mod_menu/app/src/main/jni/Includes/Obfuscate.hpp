#pragma once
// Simple XOR compile-time string obfuscation (lightweight, mencegah static string scanning)
namespace Obf {
    template <unsigned N>
    struct XorStr {
        char buf[N + 1];
        constexpr XorStr(const char* s) : buf{} {
            char key = 0x5A;
            for (unsigned i = 0; i < N; ++i) {
                buf[i] = s[i] ^ key;
                key = (key + 3) & 0xFF;
            }
            buf[N] = 0;
        }
        const char* decrypt() {
            char key = 0x5A;
            for (unsigned i = 0; i < N; ++i) {
                buf[i] ^= key;
                key = (key + 3) & 0xFF;
            }
            return buf;
        }
    };
}
#define OBF(s) ([](){ static Obf::XorStr<sizeof(s)-1> xs(s); return xs.decrypt(); }())
