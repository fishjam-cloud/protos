defmodule Fishjam.AgentRequest.AuthRequest do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.AgentRequest.AuthRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :token, 1, type: :string
end

defmodule Fishjam.AgentRequest.AddTrack.CodecParameters do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.AgentRequest.AddTrack.CodecParameters",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :encoding, 1, type: Fishjam.Notifications.TrackEncoding, enum: true
  field :sample_rate, 2, type: :uint32, json_name: "sampleRate"
  field :channels, 3, type: :uint32
end

defmodule Fishjam.AgentRequest.AddTrack do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.AgentRequest.AddTrack",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :track, 1, type: Fishjam.Notifications.Track

  field :codec_params, 2,
    type: Fishjam.AgentRequest.AddTrack.CodecParameters,
    json_name: "codecParams"
end

defmodule Fishjam.AgentRequest.RemoveTrack do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.AgentRequest.RemoveTrack",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :track_id, 1, type: :string, json_name: "trackId"
end

defmodule Fishjam.AgentRequest.TrackData do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.AgentRequest.TrackData",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :track_id, 1, type: :string, json_name: "trackId"
  field :data, 2, type: :bytes
end

defmodule Fishjam.AgentRequest.InterruptTrack do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.AgentRequest.InterruptTrack",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :track_id, 1, type: :string, json_name: "trackId"
end

defmodule Fishjam.AgentRequest.CaptureImage do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.AgentRequest.CaptureImage",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :track_id, 1, type: :string, json_name: "trackId"
end

defmodule Fishjam.AgentRequest do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.AgentRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :content, 0

  field :auth_request, 1,
    type: Fishjam.AgentRequest.AuthRequest,
    json_name: "authRequest",
    oneof: 0

  field :add_track, 2, type: Fishjam.AgentRequest.AddTrack, json_name: "addTrack", oneof: 0

  field :remove_track, 3,
    type: Fishjam.AgentRequest.RemoveTrack,
    json_name: "removeTrack",
    oneof: 0

  field :track_data, 4, type: Fishjam.AgentRequest.TrackData, json_name: "trackData", oneof: 0

  field :interrupt_track, 5,
    type: Fishjam.AgentRequest.InterruptTrack,
    json_name: "interruptTrack",
    oneof: 0

  field :capture_image, 6,
    type: Fishjam.AgentRequest.CaptureImage,
    json_name: "captureImage",
    oneof: 0
end

defmodule Fishjam.AgentResponse.Authenticated do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.AgentResponse.Authenticated",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Fishjam.AgentResponse.TrackData do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.AgentResponse.TrackData",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :peer_id, 1, type: :string, json_name: "peerId"
  field :track, 2, type: Fishjam.Notifications.Track
  field :data, 3, type: :bytes
end

defmodule Fishjam.AgentResponse do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.AgentResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :content, 0

  field :authenticated, 1, type: Fishjam.AgentResponse.Authenticated, oneof: 0
  field :track_data, 2, type: Fishjam.AgentResponse.TrackData, json_name: "trackData", oneof: 0
end
