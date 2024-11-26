defmodule Fishjam.MediaEvents.Peer.MediaEvent.VariantBitrate do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :variant, 1, type: Fishjam.MediaEvents.Variant, enum: true
  field :bitrate, 2, type: :int32
end

defmodule Fishjam.MediaEvents.Peer.MediaEvent.Connect do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :metadata_json, 1, type: :string, json_name: "metadataJson"
end

defmodule Fishjam.MediaEvents.Peer.MediaEvent.Disconnect do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"
end

defmodule Fishjam.MediaEvents.Peer.MediaEvent.UpdateEndpointMetadata do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :metadata_json, 1, type: :string, json_name: "metadataJson"
end

defmodule Fishjam.MediaEvents.Peer.MediaEvent.UpdateTrackMetadata do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :track_id, 1, type: :string, json_name: "trackId"
  field :metadata_json, 2, type: :string, json_name: "metadataJson"
end

defmodule Fishjam.MediaEvents.Peer.MediaEvent.RenegotiateTracks do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"
end

defmodule Fishjam.MediaEvents.Peer.MediaEvent.SdpOffer.TrackIdToMetadataJsonEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Fishjam.MediaEvents.Peer.MediaEvent.SdpOffer.TrackIdToBitratesEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :key, 1, type: :string
  field :value, 2, type: Fishjam.MediaEvents.Peer.MediaEvent.TrackBitrates
end

defmodule Fishjam.MediaEvents.Peer.MediaEvent.SdpOffer.MidToTrackIdEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Fishjam.MediaEvents.Peer.MediaEvent.SdpOffer do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :sdp, 1, type: :string

  field :track_id_to_metadata_json, 2,
    repeated: true,
    type: Fishjam.MediaEvents.Peer.MediaEvent.SdpOffer.TrackIdToMetadataJsonEntry,
    json_name: "trackIdToMetadataJson",
    map: true

  field :track_id_to_bitrates, 3,
    repeated: true,
    type: Fishjam.MediaEvents.Peer.MediaEvent.SdpOffer.TrackIdToBitratesEntry,
    json_name: "trackIdToBitrates",
    map: true

  field :mid_to_track_id, 4,
    repeated: true,
    type: Fishjam.MediaEvents.Peer.MediaEvent.SdpOffer.MidToTrackIdEntry,
    json_name: "midToTrackId",
    map: true
end

defmodule Fishjam.MediaEvents.Peer.MediaEvent.TrackBitrates do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :track_id, 1, type: :string, json_name: "trackId"

  field :variant_bitrates, 2,
    repeated: true,
    type: Fishjam.MediaEvents.Peer.MediaEvent.VariantBitrate,
    json_name: "variantBitrates"
end

defmodule Fishjam.MediaEvents.Peer.MediaEvent.DisableTrackVariant do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :track_id, 1, type: :string, json_name: "trackId"
  field :variant, 2, type: Fishjam.MediaEvents.Variant, enum: true
end

defmodule Fishjam.MediaEvents.Peer.MediaEvent.EnableTrackVariant do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :track_id, 1, type: :string, json_name: "trackId"
  field :variant, 2, type: Fishjam.MediaEvents.Variant, enum: true
end

defmodule Fishjam.MediaEvents.Peer.MediaEvent.SetTargetTrackVariant do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :track_id, 1, type: :string, json_name: "trackId"
  field :variant, 2, type: Fishjam.MediaEvents.Variant, enum: true
end

defmodule Fishjam.MediaEvents.Peer.MediaEvent do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  oneof :content, 0

  field :connect, 1, type: Fishjam.MediaEvents.Peer.MediaEvent.Connect, oneof: 0
  field :disconnect, 2, type: Fishjam.MediaEvents.Peer.MediaEvent.Disconnect, oneof: 0

  field :update_endpoint_metadata, 3,
    type: Fishjam.MediaEvents.Peer.MediaEvent.UpdateEndpointMetadata,
    json_name: "updateEndpointMetadata",
    oneof: 0

  field :update_track_metadata, 4,
    type: Fishjam.MediaEvents.Peer.MediaEvent.UpdateTrackMetadata,
    json_name: "updateTrackMetadata",
    oneof: 0

  field :renegotiate_tracks, 5,
    type: Fishjam.MediaEvents.Peer.MediaEvent.RenegotiateTracks,
    json_name: "renegotiateTracks",
    oneof: 0

  field :candidate, 6, type: Fishjam.MediaEvents.Candidate, oneof: 0

  field :sdp_offer, 7,
    type: Fishjam.MediaEvents.Peer.MediaEvent.SdpOffer,
    json_name: "sdpOffer",
    oneof: 0

  field :track_bitrates, 8,
    type: Fishjam.MediaEvents.Peer.MediaEvent.TrackBitrates,
    json_name: "trackBitrates",
    oneof: 0

  field :enable_track_variant, 9,
    type: Fishjam.MediaEvents.Peer.MediaEvent.EnableTrackVariant,
    json_name: "enableTrackVariant",
    oneof: 0

  field :disable_track_variant, 10,
    type: Fishjam.MediaEvents.Peer.MediaEvent.DisableTrackVariant,
    json_name: "disableTrackVariant",
    oneof: 0

  field :set_target_track_variant, 11,
    type: Fishjam.MediaEvents.Peer.MediaEvent.SetTargetTrackVariant,
    json_name: "setTargetTrackVariant",
    oneof: 0
end
