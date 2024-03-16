using  Plots
using DifferentialEquations
using OrdinaryDiffEq

const N = 9000
const I0 = 70
const R0 = 10
S0 = N - I0 - R0
const alpha = 0.07
const beta = 0.1

u0 = [S0, I0, R0]

P0 = (beta)

T = (0, 80)

function F0(du, u, p, t)
    beta = p
    du[1] = 0
    du[2] = -beta*u[2]
    du[3] = beta*u[2]
end

problem0 = ODEProblem(F0, u0, T, P0)
solution0 = solve(problem0, Tsit5(), dtmax=0.01)

plt0 = plot(solution0, vars=(0,1), color=:brown, label="S(t)", title="Динамика изменения числа особей в группе S", xlabel="t")
plt1 = plot(solution0, vars=(0,2), color=:red, label="I(t)", title="Динамика изменения числа особей в группе I и R", xlabel="t")
plot!(plt1, solution0, vars=(0,3), color=:green, label="R(t)")

savefig(plt0, "j11.png")
savefig(plt1, "j12.png")

P1 = (alpha, beta)


function F1(du, u, p, t)
    alpha, beta = p
    du[1] = -alpha*u[1]
    du[2] = alpha*u[1]-beta*u[2]
    du[3] = beta*u[2]
end

problem1 = ODEProblem(F1, u0, T, P1)
solution1 = solve(problem1, Tsit5(), dtmax=0.01)

plt2 = plot(solution1, vars=(0,1), color=:purple, label="S(t)", title="Динамика изменения числа особей в группах S,I,R", xlabel="t")
plot!(plt2, solution1, vars=(0,2), color=:blue, label="I(t)")
plot!(plt2, solution1, vars=(0,3), color=:orange, label="R(t)")

savefig(plt2, "j2.png")
