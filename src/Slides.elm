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
        , md
            """
        # Example Elixir

        ```
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
        , md
            """
        # Example Erlang
        ```
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
        , md
            """
        # Demo
        """
        ]
