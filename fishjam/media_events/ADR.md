# Media Events defined as protobufs

## Why ?
Currently, all communication between the server/client and Fishjam is clearly defined using protobufs or openapi (REST API), with the exception of media events.
Media events are currently sent using JSON encoding, which doesn't enforce or document the structure of specific events, leading to unnecessary errors in the implementation of client SDKs.
It would be beneficial to have a protobufs documentation that includes comprehensive details about media events and their specific structure and provide event parsers for SDKs and Fishjam to streamline the process.

## How to Ensure Backward Compatibility

### 1. Send Both Old and New Media Events
* Client SDKs would have to ignore media events that are not compatible with their version.
* The engine would have to handle/send both types of media events.


### 2. Differentiating Between SDKs
Fishjam can differentiate between SDKs by creating a WebRTC endpoint with a configuration that specifies what kind of media events should be handled/sent based on the client SDK version.

* There is no need to change the client SDK.
* Fishjam has to recognize the client version and create adequate endpoint configuration.
* The engine must allow the choice of media event types.

## Required Changes
The migration of media events to protobufs requires changes in:

* Fishjam
  * Parsing protobufs - as it sometimes changes something in events (e.g., peer metadata).
  * Changes related to backward compatibility.

* Engine
  * Definition of protobufs - the engine is open source, so protobufs configuration has to be available within its repository.
  * Changes should be made only to the ExWebRTC endpoint.
  * Changes related to backward compatibility.
  
* Web SDKs
  * Parsing protobufs instead of JSON.
  * Optional changes related to backward compatibility.

* Mobile SDKs
  * Parsing protobufs instead of JSON.
  * Optional changes related to backward compatibility.

Backward compatibility for SDKs is only needed with the first option.​

## Implementation (In Order)

1. Implementing protobufs in Engine
2. Implementing protbufs in Fishjam
3. Implementing backward compatibility in Fishjam
4. Ensuring that Fishjam works with current SDKs
5. Support for protobufs in Web Client SDKs
6. Support for protobufs in Mobile Client SDKs