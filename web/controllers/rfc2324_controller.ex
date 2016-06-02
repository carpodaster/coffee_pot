defmodule CoffeePot.Rfc2324Controller do
  use CoffeePot.Web, :controller

  def index(conn, _params) do
    text conn, "Ask #{CoffeePot.Consumer.sample} to pour you another cup.\n"
  end

  def options(conn, _params) do
    json conn, %{ drinkers: CoffeePot.Consumer.all }
  end

  def brew(conn, _params) do
    text conn, "It's #{CoffeePot.Consumer.sample}'s turn to brew it!\n"
  end

  def not_implemented(conn, _params) do
    send_resp conn, 501, "Not Implemented\n"
  end
end
