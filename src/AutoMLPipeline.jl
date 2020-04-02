module AutoMLPipeline

greet() = print("Hello World!")
export fit!, transform!, fit_transform!

include("abstracttypes.jl")
using .AbsTypes
export Machine, Computer, Workflow, Learner, Transformer

include("utils.jl")
using .Utils

include("basefilters.jl")
using .BaseFilters
export OneHotEncoder

include("featureselector.jl")
using .FeatureSelectors
export FeatureSelector, CatFeatureSelector, NumFeatureSelector, CatNumDiscriminator

include("skpreprocessor.jl")
using .SKPreprocessors
export SKPreprocessor, skpreprocessors

include("sklearners.jl")
using .SKLearners
export SKLearner, sklearners

include("decisiontree.jl")
using .DecisionTreeLearners
export PrunedTree, RandomForest, Adaboost

include("ensemble.jl")
using .EnsembleMethods
export VoteEnsemble, StackEnsemble, BestLearner

include("crossvalidator.jl")
using .CrossValidators
export crossvalidate

include("skcrossvalidator.jl")
using .SKCrossValidators
export crossvalidate

include("naremover.jl")
using .NARemovers
export NARemover

include("openmltask.jl")
using .OpenMLTaskReaders
export OpenMLTaskReader
export test_opmltaskreader

include("pipelines.jl")
using .Pipelines
export @pipeline
export @pipelinex
export Pipeline, ComboPipeline 

end # module
