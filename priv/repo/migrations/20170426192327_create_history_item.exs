defmodule MurtaPaymentsBe.Repo.Migrations.CreateHistoryItem do
  use Ecto.Migration

  def change do
    create table(:history_items) do
      add :date, :string

      timestamps()
    end

  end
end
