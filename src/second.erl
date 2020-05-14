%%%--------------------------------------------------------------------------------
%%% @author fredrik <fredrik@teamleader.se>
%%% @copyright (C) 2020
%%% @doc First exercise
%%% <em>FUNCTIONAL PROGRAMMING IN ERLANG THE UNIVERSITY OF KENT<em>
%%%
%%% @end
%%%-------------------------------------------------------------------------------
-module(second).
-author("fredrik").

%% API
-export([hypotenuse/2,perimeter/2,area/2]).

hypotenuse(A,B) ->
  math:sqrt(first:square(A) + first:square(B)).

perimeter(A,B) ->
  C = hypotenuse(A,B),
  A+B+C.

area(A,B) ->
  C = hypotenuse(A,B),
  first:area(A,B,C).