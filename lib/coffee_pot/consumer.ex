defmodule CoffeePot.Consumer do

  def all do
    (System.get_env("COFFEE_POT_CONSUMERS") || "")
    |> String.split(~r{\s}, trim: true)
  end

  def sample do
    Enum.take_random(all, 1)
    |> List.first || "no one"
  end
end
