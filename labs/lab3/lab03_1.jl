# Вариант 8
using Plots
using DifferentialEquations

x0 = 19300
y0 = 39000

a = 0.46 # константа, характеризующая степень влияния различных факторов на потери
b = 0.7 # эффективность боевых действий армии у
c = 0.82 # эффективность боевых действий армии х
h = 0.5 # константа, характеризующая степень влияния различных факторов на потери

function P(t)
    p = sin(0.5t)
end

function Q(t)
    q = cos(1.5t)
end

function ode_fn(du, u, p, t)
    x, y = u
    du[1] = - a*u[1] - b*u[2] + P(t) # изменение численности первой армии
    du[2] = - c*u[1] - h*u[2] + Q(t) # изменение численности второй
end

v0 = [x0, y0]
tspan = (0.0, 1.0)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax=0.1)

X = [u[1] for u in sol.u]
Y = [u[2] for u in sol.u]
T = [t for t in sol.t]
plt = plot(
  dpi=300,
  title="Модель боевых действий",
  legend=true)

plot!(
  plt,
  T,
  X,
  label="Численность армии x",
  color=:blue)

plot!(
  plt,
  T,
  Y,
  label="Численность армии y",
  color=:red)

savefig(plt, "out/lab03_1.png")
