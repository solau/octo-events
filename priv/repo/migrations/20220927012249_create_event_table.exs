defmodule OctoEvents.Repo.Migrations.CreateEventTable do
  use Ecto.Migration

  def change do
    create table(:events, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :action, :string
      add :number, :integer
      timestamps()
    end
  end
end
