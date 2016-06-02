defmodule CoffeePot.Rfc2324Controller do
  use CoffeePot.Web, :controller

  def options(conn, _params) do
    text conn, "At least I'm not a teapot\n"
  end

  def not_implemented(conn, _params) do
    send_resp conn, 501, "Not Implemented\n"
  end
end
