library(tidyverse)

billboard |> select(artist, track, num_range("wk", 1:12)) |> pivot_longer(num_range("wk",1:12)) |> rename(Week = name, Rank = value)



billboard_long = billboard |>
  select(artist, track, num_range("wk", 1:12)) |>
  pivot_longer(num_range("wk", 1:12),
  names_to = "Week",
  values_to = "Rank")


# Pivot wider

# names, values
billboard_long |> pivot_wider(
  names_from = "Week",
  values_from = "Rank"
)


?pivot_wider()


population
