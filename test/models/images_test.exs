defmodule Imageer.ImagesTest do
  use Imageer.ModelCase

  alias Imageer.Images

  @valid_attrs %{image: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Images.changeset(%Images{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Images.changeset(%Images{}, @invalid_attrs)
    refute changeset.valid?
  end
end
