module Spacy

using Conda
using PyCall

export spacy

function __init__()
    "spacy" in Conda._installed_packages() || Conda.add("spacy");
	global spacy = pyimport("spacy")
end

const python3 = joinpath(Conda.python_dir(Conda.ROOTENV), "python3")

function load(model::String = "en_core_web_sm")
    spacy.util.is_package(model) ?
        @info("Model `$model` is already installed") :
        run(`$python3 -m spacy download $model`)
    spacy.load(model)
end

end
