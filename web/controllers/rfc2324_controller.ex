defmodule CoffeePot.Rfc2324Controller do
  use CoffeePot.Web, :controller

  def options(conn, _params) do
    text conn, "At least I'm not a teapot\n"
  end
end
