defmodule CoffeePot.Slack do

  def post(text \\ "418 I'm a teapot") do
    HTTPotion.post webhook_url, [body: Poison.encode!(payload(text))]
  end

  defp payload(text) do
    %{ username: "schwarz, heiß, lecker", text: text, icon_emoji: ":coffee:" }
  end

  defp webhook_url do
    System.get_env "SLACK_WEBHOOK_URL"
  end

end
