# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule TDEP_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("TDEP")
JLLWrappers.@generate_main_file("TDEP", UUID("1616d667-7f4b-50a1-9dcc-173d58025fb3"))
end  # module TDEP_jll
