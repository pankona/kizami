defmodule Kizami.Repo.Migrations.CreateEntry do
  use Ecto.Migration

  def change do
    create table(:entries) do
      add :userid, references(:users)
      add :labelid, references(:labels)
      add :desctiption, :string

      timestamps()
    end

  end
end
