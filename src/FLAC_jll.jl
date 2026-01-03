# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule FLAC_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("FLAC")
JLLWrappers.@generate_main_file("FLAC", Base.UUID("1d38b3a6-207b-531b-80e8-c83f48dafa73"))
end  # module FLAC_jll
