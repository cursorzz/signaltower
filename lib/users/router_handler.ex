defmodule SignalTower.RouterHandler do

  def init(req, state) do
    handle(req, state)
  end

  def handle(request, state) do
    req = :cowboy_req.reply(
      200,
      %{"content-type" => "text/html"},
      "Hello",
      request
    )

    {:ok, req, state}
  end

  def terminate(reason, req, state) do
    # IO.puts "#{reason}, #{inspect req}, #{inspect state}"
    :ok
  end
end
