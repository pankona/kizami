defmodule Kizami.Entry do
  use Kizami.Web, :model

  schema "entries" do
    field :desctiption, :string

    belongs_to :user, Kizami.User
    belongs_to :label, Kizami.Label

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
