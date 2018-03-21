defmodule Chat do
  @moduledoc """
  Documentation for Chat.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Chat.hello
      :world

  """
  def hello do
    :world
  end

  def start do
    spawn(fn -> loop(0) end)
  end

  def loop(uptime) do
    receive do
      :stop ->
        IO.puts("Shutting down")
        exit(:normal)
    after
      2000 ->
        IO.puts("#{uptime} years of bgu-free uptime on #{node()}.")
    end

    Chat.loop(uptime + 1)
  end
end
