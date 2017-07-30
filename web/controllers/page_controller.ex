defmodule MurtaPaymentsBe.PageController do
  use MurtaPaymentsBe.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
