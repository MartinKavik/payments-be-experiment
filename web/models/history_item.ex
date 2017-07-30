defmodule MurtaPaymentsBe.HistoryItem do
  use MurtaPaymentsBe.Web, :model

  schema "history_items" do
    field :date, :string

    has_many :history_item_fields, MurtaPaymentsBe.HistoryItemField
    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:date])
    |> cast_assoc(:history_item_fields)
    |> validate_required([:date])
    |> validate_change(:history_item_fields, &validate_history_item_fields/2)
    # |> IO.inspect(label: "HistoryItem")
  end

  def validate_history_item_fields(:history_item_fields, history_item_fields) do    
    requiredKeys = ~w(mysaMurtaRozdil internet majitelka najem)

    history_item_fields_keys = Enum.map history_item_fields, fn(itemFieldChangeset) ->
      get_change itemFieldChangeset, :name
    end

    if Enum.sort(requiredKeys) == Enum.sort(history_item_fields_keys) do
      []
    else
      [history_item_fields: "Required keys #{inspect requiredKeys} not found in specified list #{inspect history_item_fields_keys}"]
    end
  end
end
