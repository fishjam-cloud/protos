defmodule Fishjam.MediaEvents.Server.MediaEvent.VadNotification.Status do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "fishjam.media_events.server.MediaEvent.VadNotification.Status",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :STATUS_SILENCE, 1
  field :STATUS_SPEECH, 2
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.Track.SimulcastConfig do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.Track.SimulcastConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :enabled, 1, type: :bool

  field :enabled_variants, 2,
    repeated: true,
    type: Fishjam.MediaEvents.Variant,
    json_name: "enabledVariants",
    enum: true

  field :disabled_variants, 3,
    repeated: true,
    type: Fishjam.MediaEvents.Variant,
    json_name: "disabledVariants",
    enum: true
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.Track do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.Track",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :metadata_json, 1, type: :string, json_name: "metadataJson"

  field :simulcast_config, 2,
    type: Fishjam.MediaEvents.Server.MediaEvent.Track.SimulcastConfig,
    json_name: "simulcastConfig"
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.Endpoint.TrackIdToTrackEntry do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.Endpoint.TrackIdToTrackEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Fishjam.MediaEvents.Server.MediaEvent.Track
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.Endpoint do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.Endpoint",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :endpoint_type, 2, type: :string, json_name: "endpointType"
  field :metadata_json, 3, type: :string, json_name: "metadataJson"

  field :track_id_to_track, 4,
    repeated: true,
    type: Fishjam.MediaEvents.Server.MediaEvent.Endpoint.TrackIdToTrackEntry,
    json_name: "trackIdToTrack",
    map: true
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.IceServer do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.IceServer",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :credential, 1, type: :string
  field :urls, 2, repeated: true, type: :string
  field :username, 3, type: :string
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.EndpointUpdated do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.EndpointUpdated",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :endpoint_id, 1, type: :string, json_name: "endpointId"
  field :metadata_json, 2, type: :string, json_name: "metadataJson"
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.TrackUpdated do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.TrackUpdated",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :endpoint_id, 1, type: :string, json_name: "endpointId"
  field :track_id, 2, type: :string, json_name: "trackId"
  field :metadata_json, 3, type: :string, json_name: "metadataJson"
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.TracksAdded.TrackIdToTrackEntry do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.TracksAdded.TrackIdToTrackEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Fishjam.MediaEvents.Server.MediaEvent.Track
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.TracksAdded do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.TracksAdded",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :endpoint_id, 1, type: :string, json_name: "endpointId"

  field :track_id_to_track, 2,
    repeated: true,
    type: Fishjam.MediaEvents.Server.MediaEvent.TracksAdded.TrackIdToTrackEntry,
    json_name: "trackIdToTrack",
    map: true
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.TracksRemoved do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.TracksRemoved",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :endpoint_id, 1, type: :string, json_name: "endpointId"
  field :track_ids, 2, repeated: true, type: :string, json_name: "trackIds"
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.EndpointAdded do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.EndpointAdded",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :endpoint_id, 1, type: :string, json_name: "endpointId"
  field :metadata_json, 2, type: :string, json_name: "metadataJson"
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.Connected.EndpointIdToEndpointEntry do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.Connected.EndpointIdToEndpointEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Fishjam.MediaEvents.Server.MediaEvent.Endpoint
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.Connected do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.Connected",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :endpoint_id, 1, type: :string, json_name: "endpointId"

  field :endpoint_id_to_endpoint, 2,
    repeated: true,
    type: Fishjam.MediaEvents.Server.MediaEvent.Connected.EndpointIdToEndpointEntry,
    json_name: "endpointIdToEndpoint",
    map: true

  field :ice_servers, 3,
    repeated: true,
    type: Fishjam.MediaEvents.Server.MediaEvent.IceServer,
    json_name: "iceServers"
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.EndpointRemoved do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.EndpointRemoved",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :endpoint_id, 1, type: :string, json_name: "endpointId"
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.Error do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.Error",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :message, 1, type: :string
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.OfferData.TrackTypes do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.OfferData.TrackTypes",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :audio, 1, type: :int32
  field :video, 2, type: :int32
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.OfferData do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.OfferData",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :tracks_types, 1,
    type: Fishjam.MediaEvents.Server.MediaEvent.OfferData.TrackTypes,
    json_name: "tracksTypes"
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.SdpAnswer.MidToTrackIdEntry do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.SdpAnswer.MidToTrackIdEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.SdpAnswer do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.SdpAnswer",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :sdp, 1, type: :string

  field :mid_to_track_id, 2,
    repeated: true,
    type: Fishjam.MediaEvents.Server.MediaEvent.SdpAnswer.MidToTrackIdEntry,
    json_name: "midToTrackId",
    map: true
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.VadNotification do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.VadNotification",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :track_id, 1, type: :string, json_name: "trackId"
  field :status, 2, type: Fishjam.MediaEvents.Server.MediaEvent.VadNotification.Status, enum: true
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.TrackVariantSwitched do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.TrackVariantSwitched",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :endpoint_id, 1, type: :string, json_name: "endpointId"
  field :track_id, 2, type: :string, json_name: "trackId"
  field :variant, 3, type: Fishjam.MediaEvents.Variant, enum: true
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.TrackVariantDisabled do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.TrackVariantDisabled",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :endpoint_id, 1, type: :string, json_name: "endpointId"
  field :track_id, 2, type: :string, json_name: "trackId"
  field :variant, 3, type: Fishjam.MediaEvents.Variant, enum: true
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.TrackVariantEnabled do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent.TrackVariantEnabled",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :endpoint_id, 1, type: :string, json_name: "endpointId"
  field :track_id, 2, type: :string, json_name: "trackId"
  field :variant, 3, type: Fishjam.MediaEvents.Variant, enum: true
end

defmodule Fishjam.MediaEvents.Server.MediaEvent do
  @moduledoc false

  use Protobuf,
    full_name: "fishjam.media_events.server.MediaEvent",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :content, 0

  field :endpoint_updated, 1,
    type: Fishjam.MediaEvents.Server.MediaEvent.EndpointUpdated,
    json_name: "endpointUpdated",
    oneof: 0

  field :track_updated, 2,
    type: Fishjam.MediaEvents.Server.MediaEvent.TrackUpdated,
    json_name: "trackUpdated",
    oneof: 0

  field :tracks_added, 3,
    type: Fishjam.MediaEvents.Server.MediaEvent.TracksAdded,
    json_name: "tracksAdded",
    oneof: 0

  field :tracks_removed, 4,
    type: Fishjam.MediaEvents.Server.MediaEvent.TracksRemoved,
    json_name: "tracksRemoved",
    oneof: 0

  field :endpoint_added, 5,
    type: Fishjam.MediaEvents.Server.MediaEvent.EndpointAdded,
    json_name: "endpointAdded",
    oneof: 0

  field :endpoint_removed, 6,
    type: Fishjam.MediaEvents.Server.MediaEvent.EndpointRemoved,
    json_name: "endpointRemoved",
    oneof: 0

  field :connected, 7, type: Fishjam.MediaEvents.Server.MediaEvent.Connected, oneof: 0
  field :error, 8, type: Fishjam.MediaEvents.Server.MediaEvent.Error, oneof: 0

  field :offer_data, 9,
    type: Fishjam.MediaEvents.Server.MediaEvent.OfferData,
    json_name: "offerData",
    oneof: 0

  field :candidate, 10, type: Fishjam.MediaEvents.Candidate, oneof: 0

  field :sdp_answer, 11,
    type: Fishjam.MediaEvents.Server.MediaEvent.SdpAnswer,
    json_name: "sdpAnswer",
    oneof: 0

  field :vad_notification, 12,
    type: Fishjam.MediaEvents.Server.MediaEvent.VadNotification,
    json_name: "vadNotification",
    oneof: 0

  field :track_variant_switched, 13,
    type: Fishjam.MediaEvents.Server.MediaEvent.TrackVariantSwitched,
    json_name: "trackVariantSwitched",
    oneof: 0

  field :track_variant_disabled, 14,
    type: Fishjam.MediaEvents.Server.MediaEvent.TrackVariantDisabled,
    json_name: "trackVariantDisabled",
    oneof: 0

  field :track_variant_enabled, 15,
    type: Fishjam.MediaEvents.Server.MediaEvent.TrackVariantEnabled,
    json_name: "trackVariantEnabled",
    oneof: 0
end
