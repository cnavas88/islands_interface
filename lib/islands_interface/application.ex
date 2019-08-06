defmodule IslandsInterface.Application do
  @moduledoc """
  TODO
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(IslandsInterfaceWeb.Endpoint, []),
      supervisor(IslandsInterfaceWeb.Presence, [])
    ]

    opts = [strategy: :one_for_one, name: IslandsInterface.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    IslandsInterfaceWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
