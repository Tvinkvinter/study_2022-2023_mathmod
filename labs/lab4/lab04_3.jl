# Вариант 8
using Plots
using DifferentialEquations

#Параметры осциллятора
#x'' + g * x' + w * x = f(t)
#w - квадрат частоты
#g - удвоенное затухание
w = 11.0
g = 1.0
x0 = 0.0
y0 = 0.0


function ode_fn(du, u, p, t)
    x, y = u
    du[1] = u[2]
    du[2] = -w*u[1] - g*u[2] + 2*cos(t)
end

v0 = [x0, y0]
tspan = (0.0, 60.0)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax=0.05)

X = [u[1] for u in sol.u]
Y = [u[2] for u in sol.u]
T = [t for t in sol.t]
plt = plot(
  dpi=300,
  title="Решение уравнения",
  legend=false)

plot!(
  plt,
  T,
  X,
  color=:blue)

savefig(plt, "out/lab04_3_solve.png")

plt2 = plot(
  dpi=300,
  title="Фазовый портрет",
  legend=false)

plot!(
  plt2,
  X,
  Y,
  color=:blue)

savefig(plt2, "out/lab04_3_phase .png")
