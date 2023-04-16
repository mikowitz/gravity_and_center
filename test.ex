alias GravityAndCenter.B

B.full_talea_patterns()
|> Enum.map(&B.talea_with_rests/1)
|> List.flatten()
|> Enum.reject(&(&1 == 0))
|> Enum.chunk_every(2, 1)
|> Enum.map(fn
  [x, x] -> {"t", x}
  [x, _] -> x
  [x] -> x
end)
|> dbg()
