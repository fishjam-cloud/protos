defmodule Fishjam.MediaEvents.Server.MediaEvent.VadNotification.Status do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :STATUS_UNSPECIFIED, 0
  field :STATUS_SILENCE, 1
  field :STATUS_SPEECH, 2
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.Track.SimulcastConfig do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :enabled, 1, type: :bool

  field :active_variants, 2,
    repeated: true,
    type: Fishjam.MediaEvents.Variant,
    json_name: "activeVariants",
    enum: true

  field :disabled_variants, 3,
    repeated: true,
    type: Fishjam.MediaEvents.Variant,
    json_name: "disabledVariants",
    enum: true
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.Track do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :track_id, 1, type: :string, json_name: "trackId"
  field :metadata_json, 2, type: :string, json_name: "metadataJson"

  field :simulcast_config, 3,
    type: Fishjam.MediaEvents.Server.MediaEvent.Track.SimulcastConfig,
    json_name: "simulcastConfig"
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.Endpoint.TrackIdToMetadataJsonEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.Endpoint do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :endpoint_type, 2, type: :string, json_name: "endpointType"
  field :metadata_json, 3, type: :string, json_name: "metadataJson"

  field :track_id_to_metadata_json, 4,
    repeated: true,
    type: Fishjam.MediaEvents.Server.MediaEvent.Endpoint.TrackIdToMetadataJsonEntry,
    json_name: "trackIdToMetadataJson",
    map: true
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.IceServer do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :credential, 1, type: :string
  field :urls, 2, repeated: true, type: :string
  field :username, 3, type: :string
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.EndpointUpdated do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :endpoint_id, 1, type: :string, json_name: "endpointId"
  field :metadata_json, 2, type: :string, json_name: "metadataJson"
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.TrackUpdated do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :endpoint_id, 1, type: :string, json_name: "endpointId"
  field :track_id, 2, type: :string, json_name: "trackId"
  field :metadata_json, 3, type: :string, json_name: "metadataJson"
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.TracksAdded.TrackIdToMetadataJsonEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.TracksAdded do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :endpoint_id, 1, type: :string, json_name: "endpointId"

  field :track_id_to_metadata_json, 2,
    repeated: true,
    type: Fishjam.MediaEvents.Server.MediaEvent.TracksAdded.TrackIdToMetadataJsonEntry,
    json_name: "trackIdToMetadataJson",
    map: true
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.TracksRemoved do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :endpoint_id, 1, type: :string, json_name: "endpointId"
  field :track_ids, 2, repeated: true, type: :string, json_name: "trackIds"
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.EndpointAdded do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :endpoint_id, 1, type: :string, json_name: "endpointId"
  field :metadata_json, 2, type: :string, json_name: "metadataJson"
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.Connected.EndpointsIdToEndpointEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :key, 1, type: :string
  field :value, 2, type: Fishjam.MediaEvents.Server.MediaEvent.Endpoint
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.Connected do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :endpoint_id, 1, type: :string, json_name: "endpointId"

  field :endpoints_id_to_endpoint, 2,
    repeated: true,
    type: Fishjam.MediaEvents.Server.MediaEvent.Connected.EndpointsIdToEndpointEntry,
    json_name: "endpointsIdToEndpoint",
    map: true

  field :ice_servers, 3,
    repeated: true,
    type: Fishjam.MediaEvents.Server.MediaEvent.IceServer,
    json_name: "iceServers"
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.EndpointRemoved do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :endpoint_id, 1, type: :string, json_name: "endpointId"
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.Error do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :message, 1, type: :string
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.OfferData.TrackTypes do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :audio, 1, type: :int32
  field :video, 2, type: :int32
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.OfferData do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :tracks_types, 1,
    type: Fishjam.MediaEvents.Server.MediaEvent.OfferData.TrackTypes,
    json_name: "tracksTypes"
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.SdpAnswer.MidToTrackIdEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.SdpAnswer do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :sdp_answer, 1, type: :string, json_name: "sdpAnswer"

  field :mid_to_track_id, 2,
    repeated: true,
    type: Fishjam.MediaEvents.Server.MediaEvent.SdpAnswer.MidToTrackIdEntry,
    json_name: "midToTrackId",
    map: true
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.VadNotification do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :track_id, 1, type: :string, json_name: "trackId"
  field :status, 2, type: Fishjam.MediaEvents.Server.MediaEvent.VadNotification.Status, enum: true
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.TrackVariantSwitched do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :endpoint_id, 1, type: :string, json_name: "endpointId"
  field :track_id, 2, type: :string, json_name: "trackId"
  field :variant, 3, type: Fishjam.MediaEvents.Variant, enum: true
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.TrackVariantDisabled do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :endpoint_id, 1, type: :string, json_name: "endpointId"
  field :track_id, 2, type: :string, json_name: "trackId"
  field :variant, 3, type: Fishjam.MediaEvents.Variant, enum: true
end

defmodule Fishjam.MediaEvents.Server.MediaEvent.TrackVariantEnabled do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :endpoint_id, 1, type: :string, json_name: "endpointId"
  field :track_id, 2, type: :string, json_name: "trackId"
  field :variant, 3, type: Fishjam.MediaEvents.Variant, enum: true
end

defmodule Fishjam.MediaEvents.Server.MediaEvent do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

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
