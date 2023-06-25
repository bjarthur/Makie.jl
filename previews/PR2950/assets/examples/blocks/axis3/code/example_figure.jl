# This file was generated, do not modify it. # hide
__result = begin # hide
    using CairoMakie
using CairoMakie # hide
CairoMakie.activate!() # hide
fig = Figure()

for (i, viewmode) in enumerate([:fit, :fitzoom, :stretch])
    for (j, elevation) in enumerate([0.1, 0.2, 0.3] .* pi)

        Label(fig[i, 1:3, Top()], "viewmode = $(repr(viewmode))", font = :bold)

        # show the extent of each cell using a box
        Box(fig[i, j], strokewidth = 0, color = :gray95)

        ax = Axis3(fig[i, j]; viewmode, elevation, protrusions = 0, aspect = :equal)
        hidedecorations!(ax)

    end
end

fig
end # hide
save(joinpath(@OUTPUT, "example_10302979880436124383.png"), __result; ) # hide
save(joinpath(@OUTPUT, "example_10302979880436124383.svg"), __result; ) # hide
nothing # hide