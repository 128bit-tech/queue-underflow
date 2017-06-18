defmodule QueueUnderflow.PageController do
  use QueueUnderflow.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
