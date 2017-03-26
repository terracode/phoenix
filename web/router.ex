defmodule Learn.Router do
  use Learn.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Learn do
    pipe_through :api
  end
end
