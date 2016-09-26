defmodule Kizami.LabelTest do
  use Kizami.ModelCase

  alias Kizami.Label

  @valid_attrs %{name: "some content", userid: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Label.changeset(%Label{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Label.changeset(%Label{}, @invalid_attrs)
    refute changeset.valid?
  end
end
