
defmodule Imageer.ImageController do
  use Imageer.Web, :controller
  alias Imageer.Image
  alias Imageer.Repo

  def index(conn, _) do
    render(conn, "index.html")
  end

  def new(conn,_) do
    changeset = Image.changeset(%Image{})
    render(conn, "new.html", chnageset: changeset)
  end

  def create(conn, %{"image" => image_params}) do
    IO.inspect image_params
  end



end
