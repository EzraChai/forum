defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def user(conn, _params) do

    users = [
      %{id: 1, name: "Irene", email: "irene@gmail.com"},
      %{id: 1, name: "Bob", email: "bob@gmail.com"}
    ]
    IO.puts("User hittt")
    json(conn, %{users: users})
  end
end
