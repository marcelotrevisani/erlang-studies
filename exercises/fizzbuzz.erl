-module(fizzbuzz).
-export([fizzbuzz/1]).
-author("Marcelo Duarte Trevisani").
-include_lib("eunit/include/eunit.hrl").


%% Fizzbuzz using guards
fizzbuzz(N) when N rem 15 =:= 0 -> "FizzBuzz!";
fizzbuzz(N) when N rem 3 =:= 0 -> "Fizz!";
fizzbuzz(N) when N rem 5 =:= 0 -> "Buzz!";
fizzbuzz(N) -> integer_to_list(N).


%% Unittest for Fizzbuzz
fizzbuzz_test_() ->
  [?_assert(fizzbuzz(1) =:= "1"),
   ?_assert(fizzbuzz(6) =:= "Fizz!"),
   ?_assert(fizzbuzz(30) =:= "FizzBuzz!"),
   ?_assert(fizzbuzz(10) =:= "Buzz!")
  ].

%% Running unittest fizzbuzz:test().

