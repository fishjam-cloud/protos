defmodule Fishjam.PeerMessage.RoomType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ROOM_TYPE_UNSPECIFIED, 0
  field :ROOM_TYPE_FULL_FEATURE, 1
  field :ROOM_TYPE_AUDIO_ONLY, 2
  field :ROOM_TYPE_BROADCASTER, 3
end

defmodule Fishjam.PeerMessage.Authenticated do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :room_type, 1, type: Fishjam.PeerMessage.RoomType, json_name: "roomType", enum: true
end

defmodule Fishjam.PeerMessage.AuthRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :token, 1, type: :string
  field :sdk_version, 2, type: :string, json_name: "sdkVersion"
end

defmodule Fishjam.PeerMessage.RTCStatsReport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data, 1, type: :string
end

defmodule Fishjam.PeerMessage.MediaEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data, 1, type: :string
end

defmodule Fishjam.PeerMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :content, 0

  field :authenticated, 1, type: Fishjam.PeerMessage.Authenticated, oneof: 0

  field :auth_request, 2,
    type: Fishjam.PeerMessage.AuthRequest,
    json_name: "authRequest",
    oneof: 0

  field :media_event, 3, type: Fishjam.PeerMessage.MediaEvent, json_name: "mediaEvent", oneof: 0

  field :rtc_stats_report, 4,
    type: Fishjam.PeerMessage.RTCStatsReport,
    json_name: "rtcStatsReport",
    oneof: 0

  field :peer_media_event, 5,
    type: Fishjam.MediaEvents.Peer.MediaEvent,
    json_name: "peerMediaEvent",
    oneof: 0

  field :server_media_event, 6,
    type: Fishjam.MediaEvents.Server.MediaEvent,
    json_name: "serverMediaEvent",
    oneof: 0
end
