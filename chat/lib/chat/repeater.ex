defmodule Chat.Repeater do
  def repeat(0) do
    repeat("Zero")
  end

  def repeat(text) when is_integer(text) do
    text
    |> to_string()
    |> repeat()
  end

  def repeat(text) do
    "Repeating " <> text
  end
end
