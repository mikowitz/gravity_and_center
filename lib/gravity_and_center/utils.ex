defmodule GravityAndCenter.Utils do
  def round_to_tuplet_point(x) do
    frac = Float.round(x - floor(x), 4)

    rounded_frac =
      cond do
        frac >= 0.9 -> 1
        frac >= 0.775 -> 0.8
        frac >= 0.70835 -> 0.75
        frac >= 0.63335 -> 0.6667
        frac >= 0.55 -> 0.6
        frac >= 0.45 -> 0.5
        frac >= 0.3667 -> 0.4
        frac >= 0.2916 -> 0.3333
        frac >= 0.225 -> 0.25
        frac >= 0.1 -> 0.2
        true -> 0
      end

    floor(x) + rounded_frac
  end
end

# 0 0.2 0.25 0.3333 0.4 0.5 0.6 0.6667 0.75 0.8 1
