defmodule MurtaPaymentsBe.HistoryItemFieldTest do
  use MurtaPaymentsBe.ModelCase

  alias MurtaPaymentsBe.HistoryItemField

  @valid_attrs %{name: "some content", value: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = HistoryItemField.changeset(%HistoryItemField{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = HistoryItemField.changeset(%HistoryItemField{}, @invalid_attrs)
    refute changeset.valid?
  end
end
