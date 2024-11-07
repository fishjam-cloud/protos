defmodule Fishjam.PeerMessage.Authenticated do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"
end

defmodule Fishjam.PeerMessage.AuthRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field(:token, 1, type: :string)
  field(:sdk_version, 2, type: :string, json_name: "sdkVersion")
end

defmodule Fishjam.PeerMessage.RTCStatsReport do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field(:data, 1, type: :string)
end

defmodule Fishjam.PeerMessage do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  oneof(:content, 0)

  field(:authenticated, 1, type: Fishjam.PeerMessage.Authenticated, oneof: 0)

  field(:auth_request, 2,
    type: Fishjam.PeerMessage.AuthRequest,
    json_name: "authRequest",
    oneof: 0
  )

  field(:peer_media_event, 3,
    type: Fishjam.MediaEvents.Peer.MediaEvent,
    json_name: "peerMediaEvent",
    oneof: 0
  )

  field(:server_media_event, 4,
    type: Fishjam.MediaEvents.Server.MediaEvent,
    json_name: "serverMediaEvent",
    oneof: 0
  )

  field(:rtc_stats_report, 5,
    type: Fishjam.PeerMessage.RTCStatsReport,
    json_name: "rtcStatsReport",
    oneof: 0
  )
end
