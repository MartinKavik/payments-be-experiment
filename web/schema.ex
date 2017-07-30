defmodule MurtaPaymentsBe.Schema do
  use Absinthe.Schema
  import_types MurtaPaymentsBe.Schema.Types

  query do
    """
    {
    historyItems {
        id
        date
        historyItemFields {
            name
            value
        }
    }
    }
    """
    @desc "Get all history items"
    field :history_items, list_of(:history_item) do
      resolve &MurtaPaymentsBe.HistoryItemResolver.all/2
    end
  end


    mutation do
    """
    mutation ($date: String!, $fields: [HistoryItemField!]!)
    {
    createHistoryItem(date: $date, fields: $fields)
    {
        id
    }
    }

    {
    "date":"2017-04-23",
    "historyItemFields":[
        {"name":"mysaMurtaRozdil","value":2000},
        {"name":"internet","value":499},
        {"name":"majitelka","value":8000},
        {"name":"najem","value":6483}]
    }
    """
    @desc "Create a history item"
    field :create_history_item, type: :history_item do
        arg :date, non_null(:string)
        arg :history_item_fields, non_null(list_of(:history_item_field_input))

        resolve &MurtaPaymentsBe.HistoryItemResolver.create/2
    end


    """
    mutation ($id: Int!)
    {
    deleteHistoryItem(id: $id)
    {
        id
    }
    }

    {
    "id":5
    }
    """
    @desc "Delete a history item"
    field :delete_history_item, type: :history_item do
        arg :id, non_null(:integer)

        resolve &MurtaPaymentsBe.HistoryItemResolver.delete/2
    end
    end

end