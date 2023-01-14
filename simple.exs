IO.puts("Hello world from Elixir")

# iex> 1          integer
# iex> 0x1F       integer
# iex> 1.0        float
# iex> true       boolean
# iex> :atom      atom / symbol
# iex> "elixir"   string
# iex> [1, 2, 3]  list
# iex> {1, 2, 3}  tuple

# 나누기 연산
IO.puts(10 / 2)         # 5.0
IO.puts(div(10, 2))     # 5
IO.puts(div(9, 2))      # 4
div(9, 2) |> IO.puts()  # 4

# 나머지
IO.puts(rem(9, 2))      # 1

# 2진수 8진수 16진수 입력을 위한 표기법도 지원, 부동소수점 역시 지원
IO.puts(0b1010)         # 10
IO.puts(0o777)         # 511
IO.puts(0x1F)         # 31
IO.puts(1.0e-10)

# round
round(3.58) |> IO.puts()   # 4
trunc(3.58) |> IO.puts()   # 3
