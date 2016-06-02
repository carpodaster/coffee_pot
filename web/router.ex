defmodule CoffeePot.Router do
  use CoffeePot.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CoffeePot do
    pipe_through :api
  end
end
