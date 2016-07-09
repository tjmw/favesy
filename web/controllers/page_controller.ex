defmodule Favesy.PageController do
  use Favesy.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
