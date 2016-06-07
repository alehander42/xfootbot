defmodule Xfootbot.Router do
  use Xfootbot.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Xfootbot do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

    # Add these two lines
  use FacebookMessenger.Phoenix.Router
  
  facebook_routes "/api/webhook", Xfootbot.WebHookController

  # Other scopes may use custom stacks.
  # scope "/api", Xfootbot do
  #   pipe_through :api
  # end
end
