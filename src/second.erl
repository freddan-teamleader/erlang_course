%%%--------------------------------------------------------------------------------
%%% @author fredrik <fredrik@teamleader.se>
%%% @copyright (C) 2020
%%% @doc First exercise
%%% <em>FUNCTIONAL PROGRAMMING IN ERLANG THE UNIVERSITY OF KENT</em>
%%%
%%% @end
%%%-------------------------------------------------------------------------------
-module(second).
-author("fredrik").

-export([hypotenuse/2,perimeter/2,area/2]).

%% @doc Gives the size of the hypotenuse of a right-angled triangle given the lengths of the two other sides.
hypotenuse(A,B) ->
  math:sqrt(first:square(A) + first:square(B)).

%% @doc The <em>perimeter</em> of a right-angled triangle, given the lengths of the two short sides.
perimeter(A,B) ->
  C = hypotenuse(A,B),
  A+B+C.

%% @doc The <em>area</em> of a right-angled triangle, given the lengths of the two short sides.
area(A,B) ->
  C = hypotenuse(A,B),
  first:area(A,B,C).