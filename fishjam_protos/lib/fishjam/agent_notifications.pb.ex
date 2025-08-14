defmodule Fishjam.AgentRequest.AuthRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :token, 1, type: :string
  field :room_id, 2, type: :string, json_name: "roomId"
end

defmodule Fishjam.AgentRequest.AddTrack.TrackConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :encoding, 1, type: Fishjam.TrackEncoding, enum: true
  field :sample_rate, 2, type: :uint32, json_name: "sampleRate"
  field :channels, 3, type: :uint32
end

defmodule Fishjam.AgentRequest.AddTrack do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :track, 1, type: Fishjam.Track
  field :config, 2, type: Fishjam.AgentRequest.AddTrack.TrackConfig
end

defmodule Fishjam.AgentRequest.RemoveTrack do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :track_id, 1, type: :string, json_name: "trackId"
end

defmodule Fishjam.AgentRequest.TrackData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :track_id, 1, type: :string, json_name: "trackId"
  field :data, 2, type: :bytes
end

defmodule Fishjam.AgentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :content, 0

  field :auth_request, 1,
    type: Fishjam.AgentRequest.AuthRequest,
    json_name: "authRequest",
    oneof: 0

  field :add_track, 2, type: Fishjam.AgentRequest.AddTrack, json_name: "addTrack", oneof: 0
  field :track_data, 3, type: Fishjam.AgentRequest.TrackData, json_name: "trackData", oneof: 0
end

defmodule Fishjam.AgentResponse.Authenticated do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :peer_id, 1, type: :string, json_name: "peerId"
end

defmodule Fishjam.AgentResponse.TrackData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :peer_id, 1, type: :string, json_name: "peerId"
  field :track, 2, type: Fishjam.Track
  field :data, 3, type: :bytes
end

defmodule Fishjam.AgentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :content, 0

  field :authenticated, 1, type: Fishjam.AgentResponse.Authenticated, oneof: 0
  field :track_data, 2, type: Fishjam.AgentResponse.TrackData, json_name: "trackData", oneof: 0
end
