defmodule MurtaPaymentsBe.HistoryItemTest do
  use MurtaPaymentsBe.ModelCase

  alias MurtaPaymentsBe.HistoryItem

  @valid_attrs %{date: "some content", intId: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = HistoryItem.changeset(%HistoryItem{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = HistoryItem.changeset(%HistoryItem{}, @invalid_attrs)
    refute changeset.valid?
  end
end
