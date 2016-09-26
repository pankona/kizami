defmodule Kizami.Repo.Migrations.CreateEntry do
  use Ecto.Migration

  def change do
    create table(:entries) do
      add :userid, :integer
      add :labelid, :integer
      add :desctiption, :string

      timestamps()
    end

  end
end
