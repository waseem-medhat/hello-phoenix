defmodule HelloPhoenixWeb.PageController do
  use HelloPhoenixWeb, :controller

  plug HelloPhoenixWeb.Plugs.Locale, "en"

  def home(conn, _params) do
    redirect(conn, to: ~p"/redirect_test")
  end

  def redirect_test(conn, _params) do
    conn
    |> put_flash(:error, "Is it?")
    |> render(:home, layout: false)
  end
end
