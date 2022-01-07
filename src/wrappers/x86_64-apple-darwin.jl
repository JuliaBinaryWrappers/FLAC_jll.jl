# Autogenerated wrapper script for FLAC_jll for x86_64-apple-darwin
export flac, libflac, libflacpp, metaflac

using Ogg_jll
JLLWrappers.@generate_wrapper_header("FLAC")
JLLWrappers.@declare_library_product(libflac, "@rpath/libFLAC.8.dylib")
JLLWrappers.@declare_library_product(libflacpp, "@rpath/libFLAC++.6.dylib")
JLLWrappers.@declare_executable_product(flac)
JLLWrappers.@declare_executable_product(metaflac)
function __init__()
    JLLWrappers.@generate_init_header(Ogg_jll)
    JLLWrappers.@init_library_product(
        libflac,
        "lib/libFLAC.8.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libflacpp,
        "lib/libFLAC++.6.dylib",
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