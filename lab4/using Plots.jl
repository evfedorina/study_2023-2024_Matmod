using Plots
using DifferentialEquations

const x0 = 0
const y0 = 2
const omega = 1
const gamma = 3
p = (omega)
p2 = (omega, gamma)
P(t) = sin(3t)
T = (0, 55)
u0 = [x0, y0]
function FF(du, u, p, t)
    omega, gamma = p
    du[1] = u[2]
    du[2] = P(t) - gamma*du[1] - omega*u[1]
end

prob = ODEProblem(FF, u0, T, p2)
solution = solve(prob, dtmax=0.05)

plt = plot(solution, vars=(2,1), color=:purple, label="Фаз.Портрет", title="Случай №1", xlabel="Ось X", ylabel="Ось Y")
plt2 = plot(solution, vars=(0,1), color=:red, label="x(t)", title="Случай №1", xlabel="t, sec")
plot!(plt2, solution, vars=(0,2), color=:brown, label="y(t)")

savefig(plt,"julia_3sl_1p")
savefig(plt2,"julia_3sl_2p")