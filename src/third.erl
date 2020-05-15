%%%-------------------------------------------------------------------
%%% @author fredrik <fredrik@teamleder.se>
%%% @copyright (C) 2020
%%% @doc
%%%
%%% @end
%%% Created : 15. maj 2020 13:03
%%%-------------------------------------------------------------------
-module(third).
-author("fredrik").

%% API
-export([testHowManyEqual/0, testMaxThree/0]).

howManyEqual(A,A,A) ->
  3;

howManyEqual(A,A,_) ->
  2;

howManyEqual(_,A,A) ->
  2;

howManyEqual(A,_,A) ->
  2;

howManyEqual(_,_,_) ->
  0.

testHowManyEqual()->
    ( howManyEqual(1,2,1) == 2 ) and
      ( howManyEqual(2,2,1) == 2 ) and
      ( howManyEqual(2,1,1) == 2 ) and
      ( howManyEqual(1,2,3) == 0 ) and
      ( howManyEqual(1,1,1) == 3 ).

maxThree(A,B,C) ->
  max( A, max( B, C ) ).

testMaxThree() ->
  maxThree(5,8,2) == 8.