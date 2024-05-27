defmodule HelloPhoenixWeb.PageController do
  use HelloPhoenixWeb, :controller

  plug HelloPhoenixWeb.Plugs.Locale, "en" when action in [:home]

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
    # conn
    # |> put_resp_content_type("text/plain")
    # |> send_resp(:im_a_teapot, "")
  end
end
