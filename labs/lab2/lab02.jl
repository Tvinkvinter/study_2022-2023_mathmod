using Plots
using DifferentialEquations

function ode_fn(du,u,p,t)
    r, θ = u
    du[1] = 1
    du[2] = sqrt(5.76) / u[1]
end

r₀ = 65/36
h = 0.1
θ₀ = 0.0
tspan = (0, 25)
prob = ODEProblem(ode_fn, [r₀, θ₀], tspan)
sol = solve(prob, dtmax=h)

R = [u[1] for u in sol.u]
Θ = [u[2] for u in sol.u]

boat_r = Float64[0.0, 25.0]
boat_θ = Float64[7π/4]

intersection_r = 0
for (i,θ) in enumerate(Θ)
	if (round(θ, digits=2) == round(boat_θ[1], digits=2))
		global intersection_r = R[i]
		break
	end
end


plt = plot(
  proj = :polar,
  aspect_ratio=:equal,
  dpi=300,
  title="Задача о погоне",
  legend=true)

plot!(
  plt,
  Θ,
  R,
  label="Траектория катера",
  color=:green)

plot!(
  plt,
  boat_θ,
  boat_r,
  label="Траектория лодки",
  color=:red)

plot!(
  plt,
  boat_θ,
  [intersection_r],
  seriestype = :scatter,
  label="Точка пересечения",
  color=:blue)

savefig(plt, "lab02_1.png")


r₀ = 65/16
θ₀ = 1π

prob = ODEProblem(ode_fn, [r₀, θ₀], tspan)
sol = solve(prob, dtmax=h)

R = [u[1] for u in sol.u]
Θ = [u[2] for u in sol.u]

boat_r = Float64[0.0, 25.0]

for (i,θ) in enumerate(Θ)
	if (round(θ, digits=2) == round(boat_θ[1], digits=2))
		global intersection_r = R[i]
		break
	end
end

plt2 = plot(
  proj = :polar,
  aspect_ratio=:equal,
  dpi=300,
  title="Задача о погоне",
  legend=true)


plot!(
  plt2,
  Θ,
  R,
  label="Траектория катера",
  color=:green)

plot!(
  plt2,
  boat_θ,
  boat_r,
  label="Траектория лодки",
  color=:red)

plot!(
  plt2,
  boat_θ,
  [intersection_r],
  seriestype = :scatter,
  label="Точка пересечения",
  color=:blue)

savefig(plt2, "lab02_2.png")