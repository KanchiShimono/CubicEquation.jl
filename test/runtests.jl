using CubicEquation
using Base.Test

anyerrors = false

test_cases = [
              "cubicequation.jl"]
             

Base.info("Running tests...")

for case in test_cases
    try
        include(case)
        println("\t\033[1m\033[32mPASSED\033[0m: $(case)")
    catch e
        anyerrors = true
        println("\t\033[1m\033[31mFAILED\033[0m: $(case)")
    end
end

if anyerrors
    throw("Test failed")
end
