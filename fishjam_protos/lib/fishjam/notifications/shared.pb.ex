defmodule Fishjam.Notifications.TrackType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TRACK_TYPE_UNSPECIFIED, 0
  field :TRACK_TYPE_VIDEO, 1
  field :TRACK_TYPE_AUDIO, 2
end

defmodule Fishjam.Notifications.TrackEncoding do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TRACK_ENCODING_UNSPECIFIED, 0
  field :TRACK_ENCODING_PCM16, 1
  field :TRACK_ENCODING_OPUS, 2
end

defmodule Fishjam.Notifications.Track do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string
  field :type, 2, type: Fishjam.Notifications.TrackType, enum: true
  field :metadata, 3, type: :string
end
