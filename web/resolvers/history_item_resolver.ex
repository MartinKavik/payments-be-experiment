defmodule MurtaPaymentsBe.HistoryItemResolver do

  def all(_args, _info) do
    {:ok, MurtaPaymentsBe.Repo.all(MurtaPaymentsBe.HistoryItem)}
  end

  def create(args, _info) do
    %MurtaPaymentsBe.HistoryItem{}
    |> MurtaPaymentsBe.HistoryItem.changeset(args)
    |> MurtaPaymentsBe.Repo.insert
  end

  def delete(args, _info) do
    historyItem = MurtaPaymentsBe.Repo.get MurtaPaymentsBe.HistoryItem, args.id
    MurtaPaymentsBe.Repo.delete historyItem
  end

end

