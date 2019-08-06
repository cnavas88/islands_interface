defmodule IslandsInterfaceWeb.Presence do
  @moduledoc """
  TODO
  """
  use Phoenix.Presence, otp_app: :islands_interface,
                        pubsub_server: IslandsInterface.PubSub
end
