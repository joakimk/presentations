!SLIDE center First bullets
# Phoenix Web Framework #

A short sample of what web development can be like with elixir.

!SLIDE bullets
## Who am I?

My name is Joakim Kolsjö

I've worked as a ruby developer since 2008

Been interested in elixir for about a year.

!SLIDE bullets
Phoenix was created 9 months ago by Chris McCord.

It's a rails inspired web framework.

!SLIDE bullets
## Routes

    @@@ ruby
    defmodule YourApp.Router do
      use Phoenix.Router

      get "/pages/:page", PageController,
        :show, as: :pages

      resources "/users", UserController
    end

!SLIDE bullets
## Controller

    @@@ ruby
    defmodule YourApp.PageController do
      use Phoenix.Controller
      alias YourApp.Router

      def show(conn, %{"page" => "admin"}) do
        redirect conn,
          Router.page_path(:show,
            "unauthorized"
          )
      end

      def show(conn, %{"page" => page}) do
        render conn, "show",
          title: "Showing page #{page}"
      end
    end

!SLIDE bullets
## View / Template

    @@@ ruby
    defmodule App.PageView do
      use App.Views

      def upcase(str) do
        String.upcase(str)
      end
    end

    # show.eex
    <h1><%= upcase(@title) %></h1>

!SLIDE bullets
## Channels

Easy async communication protocol.

Websocket client

iOS client (wip)

Android client (planned)

Could be good replacement for nodejs in some places?

!SLIDE bullets
## Performance

Not at the cost of productivity.

Macros enable nice DSLs. Performant code generated at **compile time**.

Routes -> functions -> pattern matching

I18n strings -> functions -> pattern matching

Web templates -> functions -> string concatination

!SLIDE bullets
## How much performance?

10x more throughput than rails in some benchmarks.

http://www.littlelines.com/blog/2014/07/08/elixir-vs-ruby-showdown-phoenix-vs-rails/

!SLIDE bullets
## More info

search for "phoenix" on **mostlyerlang.com** and **confreaks.com**

github.com/**joakimk/phoenix\_example\_app**
