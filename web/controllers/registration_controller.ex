defmodule HelloPhoenix.RegistrationController do
  use HelloPhoenix.Web, :controller

  plug :action

  def new(conn, _params) do
    changeset = User.changeset(%User{})
    render conn, changeset: changeset
  end
end
