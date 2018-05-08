defmodule Kizami.User do
  use Kizami.Web, :model

  schema "users" do
    field :name, :string
    field :password, :string

    has_many :labels, Kizami.Label
    has_many :entries, Kizami.Entry

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :password])
    |> validate_required([:name, :password])
    |> unique_constraint(:name)
  end
end
