defmodule Kizami.EntryTest do
  use Kizami.ModelCase

  alias Kizami.Entry

  @valid_attrs %{desctiption: "some content", labelid: 42, userid: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Entry.changeset(%Entry{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Entry.changeset(%Entry{}, @invalid_attrs)
    refute changeset.valid?
  end
end
