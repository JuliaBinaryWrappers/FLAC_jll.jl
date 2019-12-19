# Autogenerated wrapper script for FLAC_jll for x86_64-unknown-freebsd11.1
export metaflac, libflacpp, libflac, flac

using Ogg_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `metaflac`
const metaflac_splitpath = ["bin", "metaflac"]

# This will be filled out by __init__() for all products, as it must be done at runtime
metaflac_path = ""

# metaflac-specific global declaration
function metaflac(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(metaflac_path)
    end
end


# Relative path to `libflacpp`
const libflacpp_splitpath = ["lib", "libFLAC++.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libflacpp_path = ""

# libflacpp-specific global declaration
# This will be filled out by __init__()
libflacpp_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libflacpp = "libFLAC++.so.6"


# Relative path to `libflac`
const libflac_splitpath = ["lib", "libFLAC.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libflac_path = ""

# libflac-specific global declaration
# This will be filled out by __init__()
libflac_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libflac = "libFLAC.so.8"


# Relative path to `flac`
const flac_splitpath = ["bin", "flac"]

# This will be filled out by __init__() for all products, as it must be done at runtime
flac_path = ""

# flac-specific global declaration
function flac(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(flac_path)
    end
end


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"FLAC")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Ogg_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Ogg_jll.LIBPATH_list,))

    global metaflac_path = normpath(joinpath(artifact_dir, metaflac_splitpath...))

    push!(PATH_list, dirname(metaflac_path))
    global libflacpp_path = normpath(joinpath(artifact_dir, libflacpp_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libflacpp_handle = dlopen(libflacpp_path)
    push!(LIBPATH_list, dirname(libflacpp_path))

    global libflac_path = normpath(joinpath(artifact_dir, libflac_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libflac_handle = dlopen(libflac_path)
    push!(LIBPATH_list, dirname(libflac_path))

    global flac_path = normpath(joinpath(artifact_dir, flac_splitpath...))

    push!(PATH_list, dirname(flac_path))
    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

