defmodule Fishjam.MediaEvents.Candidate do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :candidate, 1, type: :string
  field :sdp_m_line_index, 2, type: :int32, json_name: "sdpMLineIndex"
  field :sdp_mid, 3, type: :string, json_name: "sdpMid"
  field :username_fragment, 4, type: :string, json_name: "usernameFragment"
end
