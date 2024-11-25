# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [fishjam/media_events/peer/peer.proto](#fishjam_media_events_peer_peer-proto)
    - [MediaEvent](#fishjam-media_events-peer-MediaEvent)
    - [MediaEvent.Connect](#fishjam-media_events-peer-MediaEvent-Connect)
    - [MediaEvent.DisableTrackVariant](#fishjam-media_events-peer-MediaEvent-DisableTrackVariant)
    - [MediaEvent.Disconnect](#fishjam-media_events-peer-MediaEvent-Disconnect)
    - [MediaEvent.EnableTrackVariant](#fishjam-media_events-peer-MediaEvent-EnableTrackVariant)
    - [MediaEvent.RenegotiateTracks](#fishjam-media_events-peer-MediaEvent-RenegotiateTracks)
    - [MediaEvent.SdpOffer](#fishjam-media_events-peer-MediaEvent-SdpOffer)
    - [MediaEvent.SdpOffer.MidToTrackIdEntry](#fishjam-media_events-peer-MediaEvent-SdpOffer-MidToTrackIdEntry)
    - [MediaEvent.SdpOffer.TrackIdToBitratesEntry](#fishjam-media_events-peer-MediaEvent-SdpOffer-TrackIdToBitratesEntry)
    - [MediaEvent.SdpOffer.TrackIdToMetadataJsonEntry](#fishjam-media_events-peer-MediaEvent-SdpOffer-TrackIdToMetadataJsonEntry)
    - [MediaEvent.TrackBitrates](#fishjam-media_events-peer-MediaEvent-TrackBitrates)
    - [MediaEvent.UpdateEndpointMetadata](#fishjam-media_events-peer-MediaEvent-UpdateEndpointMetadata)
    - [MediaEvent.UpdateTrackMetadata](#fishjam-media_events-peer-MediaEvent-UpdateTrackMetadata)
    - [MediaEvent.VariantBitrate](#fishjam-media_events-peer-MediaEvent-VariantBitrate)
  
- [fishjam/media_events/server/server.proto](#fishjam_media_events_server_server-proto)
    - [MediaEvent](#fishjam-media_events-server-MediaEvent)
    - [MediaEvent.Connected](#fishjam-media_events-server-MediaEvent-Connected)
    - [MediaEvent.Connected.EndpointIdToEndpointEntry](#fishjam-media_events-server-MediaEvent-Connected-EndpointIdToEndpointEntry)
    - [MediaEvent.Endpoint](#fishjam-media_events-server-MediaEvent-Endpoint)
    - [MediaEvent.Endpoint.TrackIdToTrackEntry](#fishjam-media_events-server-MediaEvent-Endpoint-TrackIdToTrackEntry)
    - [MediaEvent.EndpointAdded](#fishjam-media_events-server-MediaEvent-EndpointAdded)
    - [MediaEvent.EndpointRemoved](#fishjam-media_events-server-MediaEvent-EndpointRemoved)
    - [MediaEvent.EndpointUpdated](#fishjam-media_events-server-MediaEvent-EndpointUpdated)
    - [MediaEvent.Error](#fishjam-media_events-server-MediaEvent-Error)
    - [MediaEvent.IceServer](#fishjam-media_events-server-MediaEvent-IceServer)
    - [MediaEvent.OfferData](#fishjam-media_events-server-MediaEvent-OfferData)
    - [MediaEvent.OfferData.TrackTypes](#fishjam-media_events-server-MediaEvent-OfferData-TrackTypes)
    - [MediaEvent.SdpAnswer](#fishjam-media_events-server-MediaEvent-SdpAnswer)
    - [MediaEvent.SdpAnswer.MidToTrackIdEntry](#fishjam-media_events-server-MediaEvent-SdpAnswer-MidToTrackIdEntry)
    - [MediaEvent.Track](#fishjam-media_events-server-MediaEvent-Track)
    - [MediaEvent.Track.SimulcastConfig](#fishjam-media_events-server-MediaEvent-Track-SimulcastConfig)
    - [MediaEvent.TrackUpdated](#fishjam-media_events-server-MediaEvent-TrackUpdated)
    - [MediaEvent.TrackVariantDisabled](#fishjam-media_events-server-MediaEvent-TrackVariantDisabled)
    - [MediaEvent.TrackVariantEnabled](#fishjam-media_events-server-MediaEvent-TrackVariantEnabled)
    - [MediaEvent.TrackVariantSwitched](#fishjam-media_events-server-MediaEvent-TrackVariantSwitched)
    - [MediaEvent.TracksAdded](#fishjam-media_events-server-MediaEvent-TracksAdded)
    - [MediaEvent.TracksAdded.TrackIdToTrackEntry](#fishjam-media_events-server-MediaEvent-TracksAdded-TrackIdToTrackEntry)
    - [MediaEvent.TracksRemoved](#fishjam-media_events-server-MediaEvent-TracksRemoved)
    - [MediaEvent.VadNotification](#fishjam-media_events-server-MediaEvent-VadNotification)
  
    - [MediaEvent.VadNotification.Status](#fishjam-media_events-server-MediaEvent-VadNotification-Status)
  
- [fishjam/media_events/shared.proto](#fishjam_media_events_shared-proto)
    - [Candidate](#fishjam-media_events-Candidate)
  
    - [Variant](#fishjam-media_events-Variant)
  
- [fishjam/peer_notifications.proto](#fishjam_peer_notifications-proto)
    - [PeerMessage](#fishjam-PeerMessage)
    - [PeerMessage.AuthRequest](#fishjam-PeerMessage-AuthRequest)
    - [PeerMessage.Authenticated](#fishjam-PeerMessage-Authenticated)
    - [PeerMessage.MediaEvent](#fishjam-PeerMessage-MediaEvent)
    - [PeerMessage.RTCStatsReport](#fishjam-PeerMessage-RTCStatsReport)
  
- [fishjam/server_notifications.proto](#fishjam_server_notifications-proto)
    - [ServerMessage](#fishjam-ServerMessage)
    - [ServerMessage.AuthRequest](#fishjam-ServerMessage-AuthRequest)
    - [ServerMessage.Authenticated](#fishjam-ServerMessage-Authenticated)
    - [ServerMessage.ComponentCrashed](#fishjam-ServerMessage-ComponentCrashed)
    - [ServerMessage.HlsPlayable](#fishjam-ServerMessage-HlsPlayable)
    - [ServerMessage.HlsUploadCrashed](#fishjam-ServerMessage-HlsUploadCrashed)
    - [ServerMessage.HlsUploaded](#fishjam-ServerMessage-HlsUploaded)
    - [ServerMessage.MetricsReport](#fishjam-ServerMessage-MetricsReport)
    - [ServerMessage.PeerAdded](#fishjam-ServerMessage-PeerAdded)
    - [ServerMessage.PeerConnected](#fishjam-ServerMessage-PeerConnected)
    - [ServerMessage.PeerCrashed](#fishjam-ServerMessage-PeerCrashed)
    - [ServerMessage.PeerDeleted](#fishjam-ServerMessage-PeerDeleted)
    - [ServerMessage.PeerDisconnected](#fishjam-ServerMessage-PeerDisconnected)
    - [ServerMessage.PeerMetadataUpdated](#fishjam-ServerMessage-PeerMetadataUpdated)
    - [ServerMessage.RoomCrashed](#fishjam-ServerMessage-RoomCrashed)
    - [ServerMessage.RoomCreated](#fishjam-ServerMessage-RoomCreated)
    - [ServerMessage.RoomDeleted](#fishjam-ServerMessage-RoomDeleted)
    - [ServerMessage.SubscribeRequest](#fishjam-ServerMessage-SubscribeRequest)
    - [ServerMessage.SubscribeResponse](#fishjam-ServerMessage-SubscribeResponse)
    - [ServerMessage.Track](#fishjam-ServerMessage-Track)
    - [ServerMessage.TrackAdded](#fishjam-ServerMessage-TrackAdded)
    - [ServerMessage.TrackMetadataUpdated](#fishjam-ServerMessage-TrackMetadataUpdated)
    - [ServerMessage.TrackRemoved](#fishjam-ServerMessage-TrackRemoved)
  
    - [ServerMessage.EventType](#fishjam-ServerMessage-EventType)
    - [ServerMessage.TrackType](#fishjam-ServerMessage-TrackType)
  
- [Scalar Value Types](#scalar-value-types)



<a name="fishjam_media_events_peer_peer-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## fishjam/media_events/peer/peer.proto



<a name="fishjam-media_events-peer-MediaEvent"></a>

### MediaEvent
Defines any type of message sent from Peer to Membrane RTC Engine

SCHEMAS


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| connect | [MediaEvent.Connect](#fishjam-media_events-peer-MediaEvent-Connect) |  |  |
| disconnect | [MediaEvent.Disconnect](#fishjam-media_events-peer-MediaEvent-Disconnect) |  |  |
| update_endpoint_metadata | [MediaEvent.UpdateEndpointMetadata](#fishjam-media_events-peer-MediaEvent-UpdateEndpointMetadata) |  |  |
| update_track_metadata | [MediaEvent.UpdateTrackMetadata](#fishjam-media_events-peer-MediaEvent-UpdateTrackMetadata) |  |  |
| renegotiate_tracks | [MediaEvent.RenegotiateTracks](#fishjam-media_events-peer-MediaEvent-RenegotiateTracks) |  |  |
| candidate | [fishjam.media_events.Candidate](#fishjam-media_events-Candidate) |  |  |
| sdp_offer | [MediaEvent.SdpOffer](#fishjam-media_events-peer-MediaEvent-SdpOffer) |  |  |
| track_bitrates | [MediaEvent.TrackBitrates](#fishjam-media_events-peer-MediaEvent-TrackBitrates) |  |  |
| enable_track_variant | [MediaEvent.EnableTrackVariant](#fishjam-media_events-peer-MediaEvent-EnableTrackVariant) |  |  |
| disable_track_variant | [MediaEvent.DisableTrackVariant](#fishjam-media_events-peer-MediaEvent-DisableTrackVariant) |  |  |






<a name="fishjam-media_events-peer-MediaEvent-Connect"></a>

### MediaEvent.Connect
Sent when a peer wants to join WebRTC Endpoint.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| metadata_json | [string](#string) |  |  |






<a name="fishjam-media_events-peer-MediaEvent-DisableTrackVariant"></a>

### MediaEvent.DisableTrackVariant
Sent when client disables one of the track variants


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| track_id | [string](#string) |  |  |
| variant | [fishjam.media_events.Variant](#fishjam-media_events-Variant) |  |  |






<a name="fishjam-media_events-peer-MediaEvent-Disconnect"></a>

### MediaEvent.Disconnect
Sent when a peer disconnects from WebRTC Endpoint.






<a name="fishjam-media_events-peer-MediaEvent-EnableTrackVariant"></a>

### MediaEvent.EnableTrackVariant
Sent when client enables one of the track variants


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| track_id | [string](#string) |  |  |
| variant | [fishjam.media_events.Variant](#fishjam-media_events-Variant) |  |  |






<a name="fishjam-media_events-peer-MediaEvent-RenegotiateTracks"></a>

### MediaEvent.RenegotiateTracks
Sent when peer wants to renegatiate connection due to adding a track or removing a track






<a name="fishjam-media_events-peer-MediaEvent-SdpOffer"></a>

### MediaEvent.SdpOffer
Sent as a response to `offerData` media event during renegotiation
Maps contain only information about current peer&#39;s `sendonly` tracks.
The &#34;mid&#34; is an identifier used to associate an RTP packet with an MLine from the SDP offer/answer.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sdp_offer | [string](#string) |  |  |
| track_id_to_metadata_json | [MediaEvent.SdpOffer.TrackIdToMetadataJsonEntry](#fishjam-media_events-peer-MediaEvent-SdpOffer-TrackIdToMetadataJsonEntry) | repeated |  |
| track_id_to_bitrates | [MediaEvent.SdpOffer.TrackIdToBitratesEntry](#fishjam-media_events-peer-MediaEvent-SdpOffer-TrackIdToBitratesEntry) | repeated | Maps track_id to its bitrate. The track_id in the TrackBitrates message is ignored (we use the map key), so it can be ommited. |
| mid_to_track_id | [MediaEvent.SdpOffer.MidToTrackIdEntry](#fishjam-media_events-peer-MediaEvent-SdpOffer-MidToTrackIdEntry) | repeated |  |






<a name="fishjam-media_events-peer-MediaEvent-SdpOffer-MidToTrackIdEntry"></a>

### MediaEvent.SdpOffer.MidToTrackIdEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="fishjam-media_events-peer-MediaEvent-SdpOffer-TrackIdToBitratesEntry"></a>

### MediaEvent.SdpOffer.TrackIdToBitratesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [MediaEvent.TrackBitrates](#fishjam-media_events-peer-MediaEvent-TrackBitrates) |  |  |






<a name="fishjam-media_events-peer-MediaEvent-SdpOffer-TrackIdToMetadataJsonEntry"></a>

### MediaEvent.SdpOffer.TrackIdToMetadataJsonEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="fishjam-media_events-peer-MediaEvent-TrackBitrates"></a>

### MediaEvent.TrackBitrates
Sent when Peer wants to update its track&#39;s bitrate


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| track_id | [string](#string) |  |  |
| variant_bitrates | [MediaEvent.VariantBitrate](#fishjam-media_events-peer-MediaEvent-VariantBitrate) | repeated | Bitrate of each variant. For non-simulcast tracks use VARIANT_UNSPECIFIED. |






<a name="fishjam-media_events-peer-MediaEvent-UpdateEndpointMetadata"></a>

### MediaEvent.UpdateEndpointMetadata
Sent when a peer wants to update its metadata


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| metadata_json | [string](#string) |  |  |






<a name="fishjam-media_events-peer-MediaEvent-UpdateTrackMetadata"></a>

### MediaEvent.UpdateTrackMetadata
Sent when a peer wants to update its track&#39;s metadata


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| track_id | [string](#string) |  |  |
| metadata_json | [string](#string) |  |  |






<a name="fishjam-media_events-peer-MediaEvent-VariantBitrate"></a>

### MediaEvent.VariantBitrate



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| variant | [fishjam.media_events.Variant](#fishjam-media_events-Variant) |  |  |
| bitrate | [int32](#int32) |  |  |





 

 

 

 



<a name="fishjam_media_events_server_server-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## fishjam/media_events/server/server.proto



<a name="fishjam-media_events-server-MediaEvent"></a>

### MediaEvent
Defines any type of message sent from Membrane RTC Engine to Peer


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endpoint_updated | [MediaEvent.EndpointUpdated](#fishjam-media_events-server-MediaEvent-EndpointUpdated) |  |  |
| track_updated | [MediaEvent.TrackUpdated](#fishjam-media_events-server-MediaEvent-TrackUpdated) |  |  |
| tracks_added | [MediaEvent.TracksAdded](#fishjam-media_events-server-MediaEvent-TracksAdded) |  |  |
| tracks_removed | [MediaEvent.TracksRemoved](#fishjam-media_events-server-MediaEvent-TracksRemoved) |  |  |
| endpoint_added | [MediaEvent.EndpointAdded](#fishjam-media_events-server-MediaEvent-EndpointAdded) |  |  |
| endpoint_removed | [MediaEvent.EndpointRemoved](#fishjam-media_events-server-MediaEvent-EndpointRemoved) |  |  |
| connected | [MediaEvent.Connected](#fishjam-media_events-server-MediaEvent-Connected) |  |  |
| error | [MediaEvent.Error](#fishjam-media_events-server-MediaEvent-Error) |  |  |
| offer_data | [MediaEvent.OfferData](#fishjam-media_events-server-MediaEvent-OfferData) |  |  |
| candidate | [fishjam.media_events.Candidate](#fishjam-media_events-Candidate) |  |  |
| sdp_answer | [MediaEvent.SdpAnswer](#fishjam-media_events-server-MediaEvent-SdpAnswer) |  |  |
| vad_notification | [MediaEvent.VadNotification](#fishjam-media_events-server-MediaEvent-VadNotification) |  |  |
| track_variant_switched | [MediaEvent.TrackVariantSwitched](#fishjam-media_events-server-MediaEvent-TrackVariantSwitched) |  |  |
| track_variant_disabled | [MediaEvent.TrackVariantDisabled](#fishjam-media_events-server-MediaEvent-TrackVariantDisabled) |  |  |
| track_variant_enabled | [MediaEvent.TrackVariantEnabled](#fishjam-media_events-server-MediaEvent-TrackVariantEnabled) |  |  |






<a name="fishjam-media_events-server-MediaEvent-Connected"></a>

### MediaEvent.Connected
Sent to the peer after connecting to the WebRTC Endpoint.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endpoint_id | [string](#string) |  |  |
| endpoint_id_to_endpoint | [MediaEvent.Connected.EndpointIdToEndpointEntry](#fishjam-media_events-server-MediaEvent-Connected-EndpointIdToEndpointEntry) | repeated |  |
| ice_servers | [MediaEvent.IceServer](#fishjam-media_events-server-MediaEvent-IceServer) | repeated |  |






<a name="fishjam-media_events-server-MediaEvent-Connected-EndpointIdToEndpointEntry"></a>

### MediaEvent.Connected.EndpointIdToEndpointEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [MediaEvent.Endpoint](#fishjam-media_events-server-MediaEvent-Endpoint) |  |  |






<a name="fishjam-media_events-server-MediaEvent-Endpoint"></a>

### MediaEvent.Endpoint



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endpoint_type | [string](#string) |  |  |
| metadata_json | [string](#string) |  |  |
| track_id_to_track | [MediaEvent.Endpoint.TrackIdToTrackEntry](#fishjam-media_events-server-MediaEvent-Endpoint-TrackIdToTrackEntry) | repeated |  |






<a name="fishjam-media_events-server-MediaEvent-Endpoint-TrackIdToTrackEntry"></a>

### MediaEvent.Endpoint.TrackIdToTrackEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [MediaEvent.Track](#fishjam-media_events-server-MediaEvent-Track) |  |  |






<a name="fishjam-media_events-server-MediaEvent-EndpointAdded"></a>

### MediaEvent.EndpointAdded
Sent to all peers in the room after a new endpoint was added.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endpoint_id | [string](#string) |  |  |
| metadata_json | [string](#string) |  |  |






<a name="fishjam-media_events-server-MediaEvent-EndpointRemoved"></a>

### MediaEvent.EndpointRemoved
Sent to all remaining peers in the room after some endpoint was removed.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endpoint_id | [string](#string) |  |  |






<a name="fishjam-media_events-server-MediaEvent-EndpointUpdated"></a>

### MediaEvent.EndpointUpdated
Sent when metadata of one of the endpoints was updated


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endpoint_id | [string](#string) |  |  |
| metadata_json | [string](#string) |  |  |






<a name="fishjam-media_events-server-MediaEvent-Error"></a>

### MediaEvent.Error
Sent to inform that an error occurred on the server providing a message to show


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| message | [string](#string) |  |  |






<a name="fishjam-media_events-server-MediaEvent-IceServer"></a>

### MediaEvent.IceServer



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| credential | [string](#string) |  |  |
| urls | [string](#string) | repeated |  |
| username | [string](#string) |  |  |






<a name="fishjam-media_events-server-MediaEvent-OfferData"></a>

### MediaEvent.OfferData
Sent to inform about the number of audio and video tracks that will be sent from the engine to the peer


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| tracks_types | [MediaEvent.OfferData.TrackTypes](#fishjam-media_events-server-MediaEvent-OfferData-TrackTypes) |  |  |






<a name="fishjam-media_events-server-MediaEvent-OfferData-TrackTypes"></a>

### MediaEvent.OfferData.TrackTypes



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| audio | [int32](#int32) |  |  |
| video | [int32](#int32) |  |  |






<a name="fishjam-media_events-server-MediaEvent-SdpAnswer"></a>

### MediaEvent.SdpAnswer
Sent after receiving `SdpOffer` from Peer


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sdp_answer | [string](#string) |  |  |
| mid_to_track_id | [MediaEvent.SdpAnswer.MidToTrackIdEntry](#fishjam-media_events-server-MediaEvent-SdpAnswer-MidToTrackIdEntry) | repeated |  |






<a name="fishjam-media_events-server-MediaEvent-SdpAnswer-MidToTrackIdEntry"></a>

### MediaEvent.SdpAnswer.MidToTrackIdEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="fishjam-media_events-server-MediaEvent-Track"></a>

### MediaEvent.Track
SCHEMAS


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| metadata_json | [string](#string) |  |  |
| simulcast_config | [MediaEvent.Track.SimulcastConfig](#fishjam-media_events-server-MediaEvent-Track-SimulcastConfig) |  |  |






<a name="fishjam-media_events-server-MediaEvent-Track-SimulcastConfig"></a>

### MediaEvent.Track.SimulcastConfig



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| enabled | [bool](#bool) |  |  |
| enabled_variants | [fishjam.media_events.Variant](#fishjam-media_events-Variant) | repeated |  |
| disabled_variants | [fishjam.media_events.Variant](#fishjam-media_events-Variant) | repeated |  |






<a name="fishjam-media_events-server-MediaEvent-TrackUpdated"></a>

### MediaEvent.TrackUpdated
Sent when metadata of one of the tracks was updated


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endpoint_id | [string](#string) |  |  |
| track_id | [string](#string) |  |  |
| metadata_json | [string](#string) |  |  |






<a name="fishjam-media_events-server-MediaEvent-TrackVariantDisabled"></a>

### MediaEvent.TrackVariantDisabled
Sent when track&#39;s variant has been disabled


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endpoint_id | [string](#string) |  |  |
| track_id | [string](#string) |  |  |
| variant | [fishjam.media_events.Variant](#fishjam-media_events-Variant) |  |  |






<a name="fishjam-media_events-server-MediaEvent-TrackVariantEnabled"></a>

### MediaEvent.TrackVariantEnabled
Sent when track&#39;s variant has been enabled


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endpoint_id | [string](#string) |  |  |
| track_id | [string](#string) |  |  |
| variant | [fishjam.media_events.Variant](#fishjam-media_events-Variant) |  |  |






<a name="fishjam-media_events-server-MediaEvent-TrackVariantSwitched"></a>

### MediaEvent.TrackVariantSwitched
Informs that track&#39;s variant has been changed


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endpoint_id | [string](#string) |  |  |
| track_id | [string](#string) |  |  |
| variant | [fishjam.media_events.Variant](#fishjam-media_events-Variant) |  |  |






<a name="fishjam-media_events-server-MediaEvent-TracksAdded"></a>

### MediaEvent.TracksAdded
Sent to informs that one of the peers has added one or more tracks.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endpoint_id | [string](#string) |  |  |
| track_id_to_track | [MediaEvent.TracksAdded.TrackIdToTrackEntry](#fishjam-media_events-server-MediaEvent-TracksAdded-TrackIdToTrackEntry) | repeated |  |






<a name="fishjam-media_events-server-MediaEvent-TracksAdded-TrackIdToTrackEntry"></a>

### MediaEvent.TracksAdded.TrackIdToTrackEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [MediaEvent.Track](#fishjam-media_events-server-MediaEvent-Track) |  |  |






<a name="fishjam-media_events-server-MediaEvent-TracksRemoved"></a>

### MediaEvent.TracksRemoved
Sent to informs that one of the peers has removed one or more tracks.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| endpoint_id | [string](#string) |  |  |
| track_ids | [string](#string) | repeated |  |






<a name="fishjam-media_events-server-MediaEvent-VadNotification"></a>

### MediaEvent.VadNotification
Sent to inform that the track denoted by `trackId` has changed their voice actiivty
For this notification to work, the server must be configured to use VAD extension
and the sender must support it.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| track_id | [string](#string) |  |  |
| status | [MediaEvent.VadNotification.Status](#fishjam-media_events-server-MediaEvent-VadNotification-Status) |  |  |





 


<a name="fishjam-media_events-server-MediaEvent-VadNotification-Status"></a>

### MediaEvent.VadNotification.Status


| Name | Number | Description |
| ---- | ------ | ----------- |
| STATUS_UNSPECIFIED | 0 |  |
| STATUS_SILENCE | 1 |  |
| STATUS_SPEECH | 2 |  |


 

 

 



<a name="fishjam_media_events_shared-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## fishjam/media_events/shared.proto



<a name="fishjam-media_events-Candidate"></a>

### Candidate
Contains information about an ICE candidate which will be sent to the peer/server


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| candidate | [string](#string) |  |  |
| sdp_m_line_index | [int32](#int32) |  |  |
| sdp_mid | [string](#string) |  |  |
| username_fragment | [string](#string) |  |  |





 


<a name="fishjam-media_events-Variant"></a>

### Variant


| Name | Number | Description |
| ---- | ------ | ----------- |
| VARIANT_UNSPECIFIED | 0 |  |
| VARIANT_LOW | 1 |  |
| VARIANT_MEDIUM | 2 |  |
| VARIANT_HIGH | 3 |  |


 

 

 



<a name="fishjam_peer_notifications-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## fishjam/peer_notifications.proto



<a name="fishjam-PeerMessage"></a>

### PeerMessage
Defines any type of message sent between FJ and a peer


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| authenticated | [PeerMessage.Authenticated](#fishjam-PeerMessage-Authenticated) |  |  |
| auth_request | [PeerMessage.AuthRequest](#fishjam-PeerMessage-AuthRequest) |  |  |
| media_event | [PeerMessage.MediaEvent](#fishjam-PeerMessage-MediaEvent) |  |  |
| rtc_stats_report | [PeerMessage.RTCStatsReport](#fishjam-PeerMessage-RTCStatsReport) |  |  |
| peer_media_event | [media_events.peer.MediaEvent](#fishjam-media_events-peer-MediaEvent) |  |  |
| server_media_event | [media_events.server.MediaEvent](#fishjam-media_events-server-MediaEvent) |  |  |






<a name="fishjam-PeerMessage-AuthRequest"></a>

### PeerMessage.AuthRequest
Request sent by peer, to authenticate to FJ server


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| token | [string](#string) |  |  |
| sdk_version | [string](#string) |  |  |






<a name="fishjam-PeerMessage-Authenticated"></a>

### PeerMessage.Authenticated
Response sent by FJ, confirming successfull authentication






<a name="fishjam-PeerMessage-MediaEvent"></a>

### PeerMessage.MediaEvent
Any type of WebRTC messages passed betweend FJ and peer


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [string](#string) |  |  |






<a name="fishjam-PeerMessage-RTCStatsReport"></a>

### PeerMessage.RTCStatsReport
PeerConnection stats sent by peer
https://developer.mozilla.org/en-US/docs/Web/API/RTCStatsReport#the_statistic_types


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [string](#string) |  |  |





 

 

 

 



<a name="fishjam_server_notifications-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## fishjam/server_notifications.proto



<a name="fishjam-ServerMessage"></a>

### ServerMessage
Defines any type of message passed between FJ and server peer


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_crashed | [ServerMessage.RoomCrashed](#fishjam-ServerMessage-RoomCrashed) |  |  |
| peer_connected | [ServerMessage.PeerConnected](#fishjam-ServerMessage-PeerConnected) |  |  |
| peer_disconnected | [ServerMessage.PeerDisconnected](#fishjam-ServerMessage-PeerDisconnected) |  |  |
| peer_crashed | [ServerMessage.PeerCrashed](#fishjam-ServerMessage-PeerCrashed) |  |  |
| component_crashed | [ServerMessage.ComponentCrashed](#fishjam-ServerMessage-ComponentCrashed) |  |  |
| authenticated | [ServerMessage.Authenticated](#fishjam-ServerMessage-Authenticated) |  |  |
| auth_request | [ServerMessage.AuthRequest](#fishjam-ServerMessage-AuthRequest) |  |  |
| subscribe_request | [ServerMessage.SubscribeRequest](#fishjam-ServerMessage-SubscribeRequest) |  |  |
| subscribe_response | [ServerMessage.SubscribeResponse](#fishjam-ServerMessage-SubscribeResponse) |  |  |
| room_created | [ServerMessage.RoomCreated](#fishjam-ServerMessage-RoomCreated) |  |  |
| room_deleted | [ServerMessage.RoomDeleted](#fishjam-ServerMessage-RoomDeleted) |  |  |
| metrics_report | [ServerMessage.MetricsReport](#fishjam-ServerMessage-MetricsReport) |  |  |
| hls_playable | [ServerMessage.HlsPlayable](#fishjam-ServerMessage-HlsPlayable) |  |  |
| hls_uploaded | [ServerMessage.HlsUploaded](#fishjam-ServerMessage-HlsUploaded) |  |  |
| hls_upload_crashed | [ServerMessage.HlsUploadCrashed](#fishjam-ServerMessage-HlsUploadCrashed) |  |  |
| peer_metadata_updated | [ServerMessage.PeerMetadataUpdated](#fishjam-ServerMessage-PeerMetadataUpdated) |  |  |
| track_added | [ServerMessage.TrackAdded](#fishjam-ServerMessage-TrackAdded) |  |  |
| track_removed | [ServerMessage.TrackRemoved](#fishjam-ServerMessage-TrackRemoved) |  |  |
| track_metadata_updated | [ServerMessage.TrackMetadataUpdated](#fishjam-ServerMessage-TrackMetadataUpdated) |  |  |
| peer_added | [ServerMessage.PeerAdded](#fishjam-ServerMessage-PeerAdded) |  |  |
| peer_deleted | [ServerMessage.PeerDeleted](#fishjam-ServerMessage-PeerDeleted) |  |  |






<a name="fishjam-ServerMessage-AuthRequest"></a>

### ServerMessage.AuthRequest
Request sent by peer, to authenticate to FJ server


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| token | [string](#string) |  |  |






<a name="fishjam-ServerMessage-Authenticated"></a>

### ServerMessage.Authenticated
Response sent by FJ, confirming successfull authentication






<a name="fishjam-ServerMessage-ComponentCrashed"></a>

### ServerMessage.ComponentCrashed
Notification sent when a component crashes


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [string](#string) |  |  |
| component_id | [string](#string) |  |  |






<a name="fishjam-ServerMessage-HlsPlayable"></a>

### ServerMessage.HlsPlayable
Notification sent when the HLS stream becomes available in a room


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [string](#string) |  |  |
| component_id | [string](#string) |  |  |






<a name="fishjam-ServerMessage-HlsUploadCrashed"></a>

### ServerMessage.HlsUploadCrashed
Notification sent when the upload of HLS recording to AWS S3 fails


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [string](#string) |  |  |






<a name="fishjam-ServerMessage-HlsUploaded"></a>

### ServerMessage.HlsUploaded
Notification sent when the HLS recording is successfully uploded to AWS S3


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [string](#string) |  |  |






<a name="fishjam-ServerMessage-MetricsReport"></a>

### ServerMessage.MetricsReport
Message containing WebRTC metrics from FJ


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| metrics | [string](#string) |  |  |






<a name="fishjam-ServerMessage-PeerAdded"></a>

### ServerMessage.PeerAdded
Notification sent when a peer is added


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [string](#string) |  |  |
| peer_id | [string](#string) |  |  |






<a name="fishjam-ServerMessage-PeerConnected"></a>

### ServerMessage.PeerConnected
Notification sent when a peer connects


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [string](#string) |  |  |
| peer_id | [string](#string) |  |  |






<a name="fishjam-ServerMessage-PeerCrashed"></a>

### ServerMessage.PeerCrashed
Notification sent when a peer crashes


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [string](#string) |  |  |
| peer_id | [string](#string) |  |  |
| reason | [string](#string) |  |  |






<a name="fishjam-ServerMessage-PeerDeleted"></a>

### ServerMessage.PeerDeleted
Notification sent when a peer is removed


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [string](#string) |  |  |
| peer_id | [string](#string) |  |  |






<a name="fishjam-ServerMessage-PeerDisconnected"></a>

### ServerMessage.PeerDisconnected
Notification sent when a peer disconnects from FJ


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [string](#string) |  |  |
| peer_id | [string](#string) |  |  |






<a name="fishjam-ServerMessage-PeerMetadataUpdated"></a>

### ServerMessage.PeerMetadataUpdated
Notification sent when peer updates its metadata


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [string](#string) |  |  |
| peer_id | [string](#string) |  |  |
| metadata | [string](#string) |  |  |






<a name="fishjam-ServerMessage-RoomCrashed"></a>

### ServerMessage.RoomCrashed
Notification sent when a room crashes


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [string](#string) |  |  |






<a name="fishjam-ServerMessage-RoomCreated"></a>

### ServerMessage.RoomCreated
Notification sent when a room is created


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [string](#string) |  |  |






<a name="fishjam-ServerMessage-RoomDeleted"></a>

### ServerMessage.RoomDeleted
Notification sent when a room is deleted


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [string](#string) |  |  |






<a name="fishjam-ServerMessage-SubscribeRequest"></a>

### ServerMessage.SubscribeRequest
Request sent by peer to subsribe for certain message type


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| event_type | [ServerMessage.EventType](#fishjam-ServerMessage-EventType) |  |  |






<a name="fishjam-ServerMessage-SubscribeResponse"></a>

### ServerMessage.SubscribeResponse
Response sent by FJ, confirming subscription for message type


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| event_type | [ServerMessage.EventType](#fishjam-ServerMessage-EventType) |  |  |






<a name="fishjam-ServerMessage-Track"></a>

### ServerMessage.Track
Describes a media track


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| type | [ServerMessage.TrackType](#fishjam-ServerMessage-TrackType) |  |  |
| metadata | [string](#string) |  |  |






<a name="fishjam-ServerMessage-TrackAdded"></a>

### ServerMessage.TrackAdded
Notification sent when peer or component adds new track


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [string](#string) |  |  |
| peer_id | [string](#string) |  |  |
| component_id | [string](#string) |  |  |
| track | [ServerMessage.Track](#fishjam-ServerMessage-Track) |  |  |






<a name="fishjam-ServerMessage-TrackMetadataUpdated"></a>

### ServerMessage.TrackMetadataUpdated
Notification sent when metadata of a multimedia track is updated


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [string](#string) |  |  |
| peer_id | [string](#string) |  |  |
| component_id | [string](#string) |  |  |
| track | [ServerMessage.Track](#fishjam-ServerMessage-Track) |  |  |






<a name="fishjam-ServerMessage-TrackRemoved"></a>

### ServerMessage.TrackRemoved
Notification sent when a track is removed


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| room_id | [string](#string) |  |  |
| peer_id | [string](#string) |  |  |
| component_id | [string](#string) |  |  |
| track | [ServerMessage.Track](#fishjam-ServerMessage-Track) |  |  |





 


<a name="fishjam-ServerMessage-EventType"></a>

### ServerMessage.EventType
Defines message groups for which peer can subscribe

| Name | Number | Description |
| ---- | ------ | ----------- |
| EVENT_TYPE_UNSPECIFIED | 0 |  |
| EVENT_TYPE_SERVER_NOTIFICATION | 1 |  |
| EVENT_TYPE_METRICS | 2 |  |



<a name="fishjam-ServerMessage-TrackType"></a>

### ServerMessage.TrackType
Defines types of tracks being published by peers and component

| Name | Number | Description |
| ---- | ------ | ----------- |
| TRACK_TYPE_UNSPECIFIED | 0 |  |
| TRACK_TYPE_VIDEO | 1 |  |
| TRACK_TYPE_AUDIO | 2 |  |


 

 

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

