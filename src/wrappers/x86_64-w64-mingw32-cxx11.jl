# Autogenerated wrapper script for FLAC_jll for x86_64-w64-mingw32-cxx11
export flac, libflac, libflacpp, metaflac

using Ogg_jll
JLLWrappers.@generate_wrapper_header("FLAC")
JLLWrappers.@declare_library_product(libflac, "libFLAC-8.dll")
JLLWrappers.@declare_library_product(libflacpp, "libFLAC++-6.dll")
JLLWrappers.@declare_executable_product(flac)
JLLWrappers.@declare_executable_product(metaflac)
function __init__()
    JLLWrappers.@generate_init_header(Ogg_jll)
    JLLWrappers.@init_library_product(
        libflac,
        "bin\\libFLAC-8.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libflacpp,
        "bin\\libFLAC++-6.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        flac,
        "bin\\flac.exe",
    )

    JLLWrappers.@init_executable_product(
        metaflac,
        "bin\\metaflac.exe",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
