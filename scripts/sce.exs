#!/usr/local/bin/elixir

defmodule Sce do

  def expr1 do
    "return value of expr1."
  end

  def expr2 do
    IO.puts "Not Short-circuit evaluation."
    "return value of expr2."
  end

end

IO.puts Sce.expr1 || Sce.expr2
