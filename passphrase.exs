#!/usr/bin/env elixir

defmodule Script do
  def to_wordlist(file_name),
    do: File.read!(file_name) |> String.split("\n") |> Enum.map(&String.trim(&1))

  def main() do
    verbs = to_wordlist("verbs.txt")
    nouns = to_wordlist("nouns.txt")
    adjectives = to_wordlist("adjectives.txt")

    IO.puts("#{Enum.random(adjectives)} #{Enum.random(nouns)} #{Enum.random(verbs)} #{Enum.random(adjectives)} #{Enum.random(nouns)}")
  end
end

Script.main()
