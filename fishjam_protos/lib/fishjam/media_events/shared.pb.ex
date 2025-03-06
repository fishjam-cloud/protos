defmodule Fishjam.MediaEvents.Variant do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :VARIANT_UNSPECIFIED, 0
  field :VARIANT_LOW, 1
  field :VARIANT_MEDIUM, 2
  field :VARIANT_HIGH, 3
end

defmodule Fishjam.MediaEvents.Candidate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :candidate, 1, type: :string
  field :sdp_m_line_index, 2, type: :int32, json_name: "sdpMLineIndex"
  field :sdp_mid, 3, type: :string, json_name: "sdpMid"
  field :username_fragment, 4, type: :string, json_name: "usernameFragment"
end
