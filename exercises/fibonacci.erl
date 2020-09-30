-module(fibonacci).
-export([fibonacci/1, fb_tail/1]).
-author("Marcelo Duarte Trevisani").
-include_lib("eunit/include/eunit.hrl").

%% Fibonacci solution
fibonacci(0) -> 0;
fibonacci(1) -> 1;
fibonacci(N) when N > 1 -> fibonacci(N - 1) + fibonacci(N - 2).

%% Using the advantage of tail recursion
fb_tail(N) when N >= 0 -> fb_tail(N, 0, 1).

fb_tail(0, Total, _) -> Total;
fb_tail(N, Total, Acc) -> fb_tail(N - 1, Total + Acc, Total).


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
  
fibonacci_tail_test_() ->
  [
    ?_assert(fb_tail(0) =:= 0),
    ?_assert(fb_tail(1) =:= 1),
    ?_assert(fb_tail(2) =:= 1),
    ?_assert(fb_tail(3) =:= 2),
    ?_assert(fb_tail(10) =:= 55),
    ?_assertException(error, function_clause, fb_tail(-5))
  ].
