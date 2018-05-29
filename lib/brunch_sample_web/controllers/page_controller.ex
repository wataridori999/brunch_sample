defmodule BrunchSampleWeb.PageController do
  use BrunchSampleWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
