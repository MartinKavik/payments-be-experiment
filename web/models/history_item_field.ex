defmodule MurtaPaymentsBe.HistoryItemField do
  use MurtaPaymentsBe.Web, :model

  schema "history_item_fields" do
    field :name, :string
    field :value, :integer

    belongs_to :history_item, MurtaPaymentsBe.HistoryItem
    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :value, :history_item_id])
    |> validate_required([:name, :value])
  end
end
