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

# atom
# atom? => c에서의 define처럼 의미를 분명하게 하기 위해 정의해서 사용할 수 있는 워드를 말함,
# Elixir에서는 true와 false도 그저 atom임 < :a는 애텀이고, a는 변수임 >
:foo |> IO.puts()            # foo
(:foo == :bar) |> IO.puts()  # false
is_atom(true) |> IO.puts()   # true
is_boolean(:true) |> IO.puts()  # true
(:true === true) |> IO.puts()  # true

is_atom(MyApp.MyModule) |> IO.puts() # true   , 모듈 이름 역시 하나의 Atom, 영어 대문자로 시작하고 .있으면 Atom으로 본다

# 문자열은 큰 따옴표로 표현한다.

# 논리 연산에서 ||, &&, !는 모든 타입에서 지원
(-20 || true) |> IO.puts() # -20
(false || 42) |> IO.puts() # 42
(42 && true)  |> IO.puts() # true
(!42)         |> IO.puts() # false
(!false)      |> IO.puts() # true

# and, or, not 연산에서는 반드시 첫번째 인자가 true나 false여야만 함
(true and 42) |> IO.puts()
# 애러: 42 and true
# 애러: not 42

#  ==, !=, ===, !==, <=, >=, <, > 와 같은 비교연산도 가능
# 정수와 실수 타입까지 엄격하게 비교할 때에는 === 사용
(1 > 2) |> IO.puts() # false
(1 != 2) |> IO.puts() # true

(2 == 2.0) |> IO.puts()  # true
(2 === 2.0) |> IO.puts()  # false

# 타입과 관계없이 비교 연산을 수행할 수 있다는 점이 중요
# 숫자 < 애텀 < 참조 < 함수 < 포트 < pid < 튜플 < 맵 < 리스트 < 비트스트링
(:hello > 999) |> IO.puts() # true
({:hello, :world} > [1, 2, 3]) |> IO.puts() # false

# 문자열 내부 식 전개
name = "Sean"
"Hello #{name}" |> IO.puts()  # "Hello Sean"
# 문자열 합치기 "<>"
"Hello " <> name |> IO.puts() # "Hello Sean"
