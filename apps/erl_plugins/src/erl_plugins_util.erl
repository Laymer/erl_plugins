-module(erl_plugins_util).

%% API
-export([
		 bytes/1
		]).

%%%===================================================================
%%% API
%%%===================================================================
%% copy from ejabberd randoms.erl
-ifdef(STRONG_RAND_BYTES).
bytes(N) ->
	crypto:strong_rand_bytes(N).
-else.
bytes(N) ->
	crypto:rand_bytes(N).
-endif.


%%--------------------------------------------------------------------
%% @doc
%% @spec
%% @end
%%--------------------------------------------------------------------

%%%===================================================================
%%% Internal functions
%%%===================================================================
