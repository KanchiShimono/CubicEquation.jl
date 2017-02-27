module CubicEquation

export Solver

type Solver
end

function (solver::Solver)(a::Real, b::Real, c::Real, d::Real)
    if a == zero(typeof(a))
        return Base.error("Can't solve. a=0 in a*x³ + b*x² + c*x + d =0")
    end
    f = (3c/a - (b/a)^2) / 3
    g = (2(b/a)^3 - (9*b*c/a^2) + 27d/a) / 27
    h = g^2 / 4 + f^3 / 27
    if f == zero(typeof(f)) && g == zero(typeof(g)) && h == zero(typeof(h))
        x1 = x2 = x3 = -cbrt(d/a)
        return [x1, x2, x3]
    elseif  h <= zero(typeof(h))
        return three_real_root(a, b, g, h)
    elseif h > zero(typeof(h))
        return one_real_root(a, b, g, h)
    end

    return Base.error("Can't solve when a=$(a) b=$(b) c=$(c) d=$(d)")
end

function three_real_root(a::Real, b::Real, g::Float64, h::Float64)
    i = (g^2 / 4 - h)^(1/2)
    j = cbrt(i)
    K = acos(-(g/2i))
    L = -j
    M = cos(K/3)
    N = sqrt(3) * sin(K/3)
    P = -(b/3a)
    x1 = 2j * cos(K/3) - (b/3a)
    x2 = L * (M + N) + P
    x3 = L * (M - N) + P
    return sort([x1, x2, x3])
end

function one_real_root(a::Real, b::Real, g::Float64, h::Float64)
    R = -g/2 + sqrt(h)
    S = cbrt(R)
    T = -g/2 - sqrt(h)
    U = cbrt(T)
    x1 = (S + U) - (b/3a)
    x2 = -(S + U)/2 - (b/3a) - im*(S-U)*sqrt(3) / 2
    x3 = -(S + U)/2 - (b/3a) + im*(S-U)*sqrt(3) / 2
    return [x1, x2, x3]
end

end #end module
