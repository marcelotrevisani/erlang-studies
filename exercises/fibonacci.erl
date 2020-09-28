-module(fibonacci).
-export([fibonacci/1]).
-author("Marcelo Duarte Trevisani").
-include_lib("eunit/include/eunit.hrl").

%% Fibonacci solution
fibonacci(0) -> 0;
fibonacci(1) -> 1;
fibonacci(N) when N > 1 -> fibonacci(N - 1) + fibonacci(N - 2).

%% Unittests
fibonacci_test_() ->
  [
    ?_assert(fibonacci(0) =:= 0),
    ?_assert(fibonacci(1) =:= 1),
    ?_assert(fibonacci(2) =:= 1),
    ?_assert(fibonacci(3) =:= 2),
    ?_assert(fibonacci(10) =:= 55),
    ?_assertException(error, function_clause, fibonacci(-5))
  ].
