defmodule Kizami.Repo.Migrations.CreateLabel do
  use Ecto.Migration

  def change do
    create table(:labels) do
      add :userid, references(:users)
      add :name, :string

      timestamps()
    end
    create unique_index(:labels, [:userid, :name])

  end
end
