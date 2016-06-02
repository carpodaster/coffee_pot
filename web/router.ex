defmodule CoffeePot.Router do
  use CoffeePot.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/coffee", CoffeePot do
    pipe_through :api

    get "/", Rfc2324Controller, :index

    match :propfind, "/", Rfc2324Controller, :options
    match :brew, "/", Rfc2324Controller, :brew
    match :when, "/", Rfc2324Controller, :not_implemented
  end
end
