defmodule MurtaPaymentsBe.Repo.Migrations.CreateHistoryItemField do
  use Ecto.Migration

  def change do
    create table(:history_item_fields) do
      add :name, :string
      add :value, :integer
      add :history_item_id, references(:history_items, on_delete: :delete_all)

      timestamps()
    end
    create index(:history_item_fields, [:history_item_id])

  end
end
