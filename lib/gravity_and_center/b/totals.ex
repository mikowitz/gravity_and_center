defmodule GravityAndCenter.B.Totals do
  def get_total(sax, acc_length) do
    case sax do
      :sop ->
        if acc_length in [2, 160], do: 4, else: 5

      :alto ->
        if acc_length < 153, do: 4, else: 3

      :tenor ->
        cond do
          acc_length == 0 -> 2
          acc_length < 155 -> 4
          true -> 3
        end

      :bari ->
        if acc_length in [
             7,
             12,
             23,
             33,
             36,
             38,
             40,
             55,
             70,
             79,
             90,
             95,
             106,
             134,
             137,
             138,
             142,
             144,
             157,
             160,
             172,
             181,
             190,
             201,
             225,
             254,
             257,
             259,
             266,
             271,
             280,
             282,
             283,
             294,
             298,
             314
           ],
           do: 4,
           else: 5
    end
  end
end
