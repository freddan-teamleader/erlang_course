%%%-------------------------------------------------------------------
%%% @author fredrik <fredrik@teamleader.se>
%%% @copyright (C) 2020
%%% @doc
%%%
%%% @end
%%% Created : 13. maj 2020 15:41
%%%-------------------------------------------------------------------
-module(first).
-author("fredrik").

%% API
-export([double/1,mult/2,area/3,square/1,treble/1]).

mult(X,Y) ->
  X*Y.

double(X) ->
  mult(2,X).

area(A,B,C) ->
  S = (A+B+C)/2,
  math:sqrt(S*(S-A)*(S-B)*(S-C)).

square(W) ->
  mult(W,W).

treble(A) ->
  mult(3,A).