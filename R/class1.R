library(tidyverse)

iris |>
  select(Sepal.Length, Species) |>
  head()

iris |>
  select(ends_with("Length")) |>
  head()
