using CubicEquation

function main()
    const_terms = readcsv("./z.csv")
    a = -0.007
    b = 0.405
    c = -5.66
    d = vec(const_terms)

    solver = Solver()

    solutions = solver.(a, b, c, d)

    ofile = open("solution_z.csv", "w")
    for i = 1:length(solutions)
        data = solutions[i]
        write(ofile, "$(data[1]),$(data[2]),$(data[3])\n")
    end
    close(ofile)
end
