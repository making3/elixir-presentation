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
        , md
            """
            # Agenda?
            * What is Elixir?
            * Why Elixir
            * Why Not Elixir?
            * Who's using Elixir? Erlang?
            * Examples
            """
        , mdFragments
            [ "# What is Elixir?"
            , "* Dynamic, functional language for building scalable and maintainable applications"
            , "* Runs on the Erlang virtual machine (BEAM)"
            , "* Anything written in Erlang can be ran in Elixir"
            ]
        , md
            """
        # Who uses Elixir?
          * Discord
          * Pinterest
          * HelloSign
        """
        , md
            """
        # Example Elixir

        TODO: Fill in sample Elixir code
        ```elixir
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

        TODO: Fill in sample Erlang code
        ```erlang
        ```
        """
        , md
            """
        # Who uses Erlang?
          * Facebook
          * WhatsApp
          * RabbitMQ
          * Amazon SimpleDB
        """
        , mdFragments
            [ "# Fault Tolerance" ]
        , mdFragments
            [ "# Hot Code Reloading" ]
        , mdFragments
            [ "# Other Features"
            , "* Functional Programming"
            , "* Extensibility"
            ]
        , md
            """
        Demo Time!
        """
        ]
