defmodule Kizami.Repo.Migrations.CreateLabel do
  use Ecto.Migration

  def change do
    create table(:labels) do
      add :userid, :integer
      add :name, :string

      timestamps()
    end

  end
end
