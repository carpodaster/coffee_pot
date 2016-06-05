defmodule CoffeePot.Slack do

  def post do
    HTTPotion.post webhook_url, [body: Poison.encode!(payload)]
  end

  defp payload do
    %{ username: "schwarz, heiß, lecker", text: "418 I am a teapot.", icon_emoji: ":coffee:" }
  end

  defp webhook_url do
    System.get_env "SLACK_WEBHOOK_URL"
  end

end
