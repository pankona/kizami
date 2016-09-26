defmodule Kizami.Label do
  use Kizami.Web, :model

  schema "labels" do
    field :userid, :integer
    field :name, :string

    belongs_to :user, Kizami.User, foreign_key: :userid

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:userid, :name])
    |> validate_required([:userid, :name])
  end
end
