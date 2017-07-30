# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     MurtaPaymentsBe.Repo.insert!(%MurtaPaymentsBe.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


  alias MurtaPaymentsBe.Repo
  alias MurtaPaymentsBe.HistoryItem
#   alias MurtaPaymentsBe.HistoryItemField



  Repo.insert!( 
    HistoryItem.changeset %HistoryItem{}, 
    %{
        date: "2015-02-03",
        history_item_fields: [
            %{
                name: "mysaMurtaRozdil",
                value: 1234,
            },
            %{
                name: "internet",
                value: 563,
            },
            %{
                name: "majitelka",
                value: 7563,
            },
            %{
                name: "najem",
                value: 6200,
            }
        ]
    }
  )

    Repo.insert!( 
    HistoryItem.changeset %HistoryItem{}, 
    %{
        date: "2017-03-02",
        history_item_fields: [
            %{
                name: "mysaMurtaRozdil",
                value: 2360,
            },
            %{
                name: "internet",
                value: 480,
            },
            %{
                name: "majitelka",
                value: 8563,
            },
            %{
                name: "najem",
                value: 6101,
            }
        ]
    }
  )



#   hi = Repo.insert! %HistoryItem{
#     intId: 1,
#     date: "2015-02-03"
#   }
#   IO.inspect hi
#   IO.puts hi.id

#   Repo.all(HistoryItem) |> Repo.preload([:fields])
#   user = Repo.get!(User, id) |> Repo.preload([posts: [:categories]])

#    Repo.insert! %HistoryItemField{
#         name: "mysaMurtaRozdil",
#         value: 1234,
#         item: hi
#     }

#     Repo.insert! %HistoryItemField{
#         name: "internet",
#         value: 563,
#         item: hi
#     }
#     Repo.insert! %HistoryItemField{
#         name: "majitelka",
#         value: 7563,
#         item: hi
#     }
#     Repo.insert! %HistoryItemField{
#         name: "najem",
#         value: 6200,
#         item: hi
#     }




#   Repo.insert! %HistoryItem{
#     intId: 2,
#     date: "2010-05-21",
#     fields: [
#         %HistoryItemField{
#             name: "mysaMurtaRozdil",
#             value: 1536
#         },
#         %HistoryItemField{
#             name: "internet",
#             value: 432
#         },
#         %HistoryItemField{
#             name: "majitelka",
#             value: 7326
#         },
#         %HistoryItemField{
#             name: "najem",
#             value: 5968
#         }
#     ]
#   }