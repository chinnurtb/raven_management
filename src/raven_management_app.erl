%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc Callbacks for the raven_management application.

-module(raven_management_app).
-author('author <author@example.com>').

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for raven_management.
start(_Type, _StartArgs) ->
    raven_management_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for raven_management.
stop(_State) ->
    ok.
