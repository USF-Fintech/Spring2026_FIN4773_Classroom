library(tidyverse)

iris  |> select(Sepal.Length)

my_iris = iris |> select(Sepal.Length)
my_iris
print(iris)


iris  |> select(Sepal.Width:Petal.Width)

iris  |> select(1:4)  |> head()

iris |> select(!(Sepal.Length:Petal.Length))


diamonds |> filter(
  carat > 0.4,
  carat < 0.5,
  cut == "Premium")


diamonds
diamonds |> slice(1, 5)


dim(diamonds)



iris |> mutate(
  std_petal_width = (Petal.Width - mean(Petal.Width)) / sd(Petal.Width)
) |> 
select(Petal.Width, std_petal_width) |> head()



summary_iris = iris |>
  summarize(
    mean_sepal_length = mean(Sepal.Length),
    mean_petal_length = mean(Petal.Length),
    sd_petal_length = sd(Petal.Length)
  )

iris |> group_by(Species) |> summarize(mean(Sepal.Length))


# Correlation

cor(iris$Sepal.Length , iris$Petal.Length)



