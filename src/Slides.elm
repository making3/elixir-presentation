module Main exposing (..)

import Slides exposing (..)


main =
    Slides.app
        slidesDefaultOptions
        [ md
            """
        # Elixir
        _Fun & reliable functional programming_
        """
        , mdFragments
            [ "# My History"
            , "* .NET (VB -> C#)"
            , "* NodeJS"
            , "* Elixir"
            ]
        , mdFragments
            [ "# What is Elixir?"
            , "* Dynamic, functional language for building scalable and maintainable applications"
            , "* Runs on the Erlang virtual machine (BEAM)"
            , "* Anything written in Erlang can be ran in Elixir"
            ]
        , md """
        ## Example Elixir

        ```elixir
        defmodule MyModule do
          def hello do
            IO.puts "Hello World"
          end
        end
        ```
        """
        , mdFragments
            [ "# Erlang"
            , "* Designed for high uptime"
            , "* Erlang first appeared in 1986"
            , "* If Java is 'write once, run anywhere', then Erlang is 'write once, run forever'. - [Joe Armstring](https://www.youtube.com/watch?v=u41GEwIq2mE&t=3m59s)"
            ]
        , md """
        ## Example Erlang
        ```erlang
        % module_name.erl
        -module(module_name).
        -compile(export_all).

        hello() ->
          io:format("~s~n", ["Hello world!"]).
        ```
        """
        , mdFragments
            [ "# Why use Elixir?"
            , "* Functional"
            , "* Immutable"
            , "* Fault Tolerant"
            , "* Mix, Hex, ExUnit"
            , "* Hot Reloading"
            ]
        , md """
        # Examples!
        """
        , md """
        ## Creating a project
        ```
        $ mix new chat
        $ cd chat
        $ mix test
        ```
        """
        , md """
        ## Mix Output
        ```
        $ mix new chat
        * creating README.md
        * creating .formatter.exs
        * creating .gitignore
        * creating mix.exs
        * creating config
        * creating config/config.exs
        * creating lib
        * creating lib/chat.ex
        * creating test
        * creating test/test_helper.exs
        * creating test/chat_test.exs
        ```
        """
        , md """
        ## Mix Test Output

        ```
        $ cd chat
        $ mix test
        Compiling 1 file (.ex)
        Generated chat app
        ..

        Finished in 0.03 seconds
        1 doctest, 1 test, 0 failures

        Randomized with seed 485747
        ```
        """
        , md """
        ## REPL
        ```elixir
        $ iex -S mix
        Erlang/OTP 20 ...

        Interactive Elixir (1.6.1)
        iex(1)> Chat.hello
        :world
        ```
        """
        , md """
        ## Basic Functions
        ```elixir
        defmodule Chat.Repeater do
          def repeat(text) do
            "Repeating " <> text
          end
        end
        ```
        """
        , md """
        ## Anonymous Functions
        ```elixir
        iex> repeat = fn (text) -> "Repeating " <> text end
        iex> repeat.("Hello")
        Repeating Hello

        iex> repeat2 = &("Repeating " <> &1)
        iex> repeat2.("World")
        Repeating World
        ```
        """
        , md """
        ## Match Operator
        ```elixir
        iex> x = 1
        1
        iex> x
        1
        iex> x = 2
        2
        iex> 2 = x
        2
        ```
        """
        , md """
        ## Pattern Matching
        ```elixir
        iex> {a, b, c} = {:hello, "world", 42}
        {:hello, "world", 42}
        iex> a
        :hello

        iex> [head | tail] = [1, 2, 3]
        [1, 2, 3]
        iex> head
        1
        iex> tail
        [2, 3]
        ```
        """
        , md """
        ## Pattern Matching Continued
        ```elixir
        defmodule Chat.Repeater do
          def repeat(0) do
            repeat("Zero")
          end

          def repeat(text) do
            "Repeating " <> text
          end
        end

        iex> Chat.Repeater.repeat(0)
        "Repeating Zero"
        iex> Chat.Repeater.repeat("foo")
        "Repeating foo"
        ```
        """
        , md """
        ## Guards
        ```elixir
        defmodule Chat.Repeater do
          def repeat(text) when is_integer(text) do
            text
            |> to_string()
            |> repeat()
          end
          ...
        end

        iex> Chat.Repeater.repeat(1)
        "Repeating 1"
        ```
        """
        , md """
        ## Pipe Operator
        ```elixir
        iex> "Elixir rocks" |> String.split()
        ["Elixir", "rocks"]
        iex> "Elixir rocks" |> String.upcase() |> String.split()
        ["ELIXIR", "ROCKS"]
        ```
        """
        , md
            """
        # Clustering Demo
        """
        , mdFragments
            [ "# Thanks To.."
            , "* [David Schmitz - Bootstrap |> Elixir](https://www.slideshare.net/koenighotze/bootstrap-elixir-easy-fun-for-busy-developers)"
            , "* [Bryan Hunter - What every Node.JS developer needs to know about Elixir](https://vimeo.com/171068992)"
            ]
        ]
