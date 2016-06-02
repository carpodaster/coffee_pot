defmodule CoffeePot.Rfc2324Controller do
  use CoffeePot.Web, :controller

  def index(conn, _params) do
    text conn, "Fingers crossed … maybe someone will bring it to you\n"
  end

  def options(conn, _params) do
    consumers = System.get_env("COFFEE_CONSUMERS")
                |> String.split(~r{\s}, trim: true)
    json conn, %{ drinkers: consumers }
  end

  def brew(conn, _params) do
    text conn, "Someone will brew it … if you're lucky\n"
  end

  def not_implemented(conn, _params) do
    send_resp conn, 501, "Not Implemented\n"
  end
end
