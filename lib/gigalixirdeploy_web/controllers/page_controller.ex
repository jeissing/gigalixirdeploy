defmodule GigalixirdeployWeb.PageController do
  use GigalixirdeployWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
