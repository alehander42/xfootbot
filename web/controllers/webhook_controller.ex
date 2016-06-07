
defmodule Xfootbot.WebHookController do
  use FacebookMessenger.Phoenix.Controller

  require Logger
  
  def message_received(msg) do
    text = FacebookMessenger.Response.message_texts(msg) |> hd
    sender = FacebookMessenger.Response.message_senders(msg) |> hd
    Logger.info(text)
    FacebookMessenger.Sender.send(sender, text)
    response = String.split(text, "") |> Enum.join("\n")
    FacebookMessenger.Sender.send(sender, response)
  end
end
