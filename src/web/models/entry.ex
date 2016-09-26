defmodule Kizami.Entry do
  use Kizami.Web, :model

  schema "entries" do
    field :userid, :integer
    field :labelid, :integer
    field :desctiption, :string

    belongs_to :user, Kizami.User, foreign_key: :userid
    belongs_to :label, Kizami.Label, foreign_key: :labelid

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:userid, :labelid, :desctiption])
    |> validate_required([:userid, :labelid, :desctiption])
  end
end
