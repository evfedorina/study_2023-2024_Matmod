using Plots
using DifferentialEquations
const x0 = 9
const y0 = 14
const a = 0.15
const b = 0.044
const c = 0.35
const d = 0.032

T = (0,500)
nach = [x0, y0]
p = (a, b, c, d)
function F(du, u, p, t)
    a, b, c, d = p
    du[1] = -c*u[1] + d*u[1]*u[2]
    du[2] = a*u[2] - b*u[1]*u[2]
end
pr = ODEProblem(F, nach, T, p)
solution = solve(pr, dtmax=0.1)
plt = plot(solution, vars=(2, 1), color=:green, title="Зависимости изменения численности хищников от изменения
численности жертв", xlabel = "Численность жертв", ylabel = "Численность хищников")
plt2 = plot(solution, vars=(0, 1), color=:purple, label="Численность хищников", title="Изменение численность и хищников, и жертв", xlabel="t")
plot!(plt2, solution, vars=(0, 2), color=:red, label="Численность жертв")
savefig(plt, "j1.png")
savefig(plt2, "j2.png")