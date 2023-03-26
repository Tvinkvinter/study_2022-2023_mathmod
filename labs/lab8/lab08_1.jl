# Вариант 8
using Plots
using DifferentialEquations

p_cr = 20 #критическая стоимость продукта
tau1 = 16 #длительность производственного цикла фирмы 1
p1 = 13 #себестоимость продукта у фирмы 1
tau2 = 19 #длительность производственного цикла фирмы 2
p2 = 11 #себестоимость продукта у фирмы 2
N = 23 #число потребителей производимого продукта
q = 1 #максимальная потребность одного человека в продукте в единицу времени

a1 = p_cr / (tau1 * tau1 * p1 * p1 * N * q)
a2 = p_cr / (tau2 * tau2 * p2 * p2 * N *q)
b = p_cr / (tau1 * tau1 * tau2 * tau2 * p1 * p1 * p2 * p2 * N * q)
c1 = (p_cr - p1) / (tau1 * p1)
c2 = (p_cr - p2) / (tau2 * p2)


function ode_fn(du, u, p, t)
    M1, M2 = u
    du[1] = u[1] - b / c1*u[1] * u[2] - a1 / c1*u[1] * u[1]
    du[2] = c2 / c1*u[2] - b / c1*u[1] * u[2] - a2 / c1*u[2] * u[2]
end

v0 = [2.5, 1.8]
tspan = (0.0, 30.0)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax = 0.05)
M1 = [u[1] for u in sol.u]
M2 = [u[2] for u in sol.u]
T = [t for t in sol.t]

plt = plot(
  dpi = 300,
  legend = true)

plot!(
  plt,
  T,
  M1,
  label = "Оборотные средства фирмы 1",
  color = :blue)

plot!(
  plt,
  T,
  M2,
  label = "Оборотные средства фирмы 2",
  color = :green)

savefig(plt, "out/lab08_1.png")

