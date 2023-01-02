# Autogenerated wrapper script for FLAC_jll for i686-linux-musl-cxx11
export flac, libflac, libflacpp, metaflac

using Ogg_jll
using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("FLAC")
JLLWrappers.@declare_library_product(libflac, "libFLAC.so.12")
JLLWrappers.@declare_library_product(libflacpp, "libFLAC++.so.10")
JLLWrappers.@declare_executable_product(flac)
JLLWrappers.@declare_executable_product(metaflac)
function __init__()
    JLLWrappers.@generate_init_header(Ogg_jll, CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libflac,
        "lib/libFLAC.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libflacpp,
        "lib/libFLAC++.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        flac,
        "bin/flac",
    )

    JLLWrappers.@init_executable_product(
        metaflac,
        "bin/metaflac",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
