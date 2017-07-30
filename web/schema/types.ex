defmodule MurtaPaymentsBe.Schema.Types do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: MurtaPaymentsBe.Repo

  object :history_item do
    field :id, :integer
    # field :id, :id
    field :date, :string
    field :history_item_fields, list_of(:history_item_field), resolve: assoc(:history_item_fields)
  end

  object :history_item_field do
    field :id, :integer
    field :name, :string
    field :value, :integer
  end 

  input_object :history_item_field_input do
    field :name, :string
    field :value, :integer
  end 
end