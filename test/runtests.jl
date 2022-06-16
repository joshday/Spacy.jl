using Spacy
using Conda
using PyCall
using Test

@testset "Spacy.jl" begin
    @test "spacy" in Conda._installed_packages()
    @test spacy isa PyObject
end
