---
title: "teleconferenceDeviceMediaQuality resource type"
description: "Video teleconferencing device media quality data."
localization_priority: Normal
author: "dongkyun"
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# teleconferenceDeviceMediaQuality resource type

Namespace: microsoft.graph

Represents video teleconferencing device media quality data.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|averageInboundJitter|Duration|The average inbound stream network jitter.|
|averageInboundPacketLossRateInPercentage|Double|The average inbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.|
|averageInboundRoundTripDelay|Duration|The average inbound stream network round trip delay.|
|averageOutboundJitter|Duration|The average outbound stream network jitter.|
|averageOutboundPacketLossRateInPercentage|Double|The average outbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.|
|averageOutboundRoundTripDelay|Duration|The average outbound stream network round trip delay.|
|channelIndex|Int32|The channel index of media. Indexing begins with 1.  If a media session contains 3 video modalities, channel indexes will be 1, 2, and 3.|
|inboundPackets|Int64|The total number of the inbound packets.|
|localIPAddress|String|the local IP address for the media session.|
|localPort|Int32|The local media port.|
|maximumInboundJitter|Duration|The maximum inbound stream network jitter.|
|maximumInboundPacketLossRateInPercentage|Double|The maximum inbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.|
|maximumInboundRoundTripDelay|Duration|The maximum inbound stream network round trip delay.|
|maximumOutboundJitter|Duration|The maximum outbound stream network jitter.|
|maximumOutboundPacketLossRateInPercentage|Double|The maximum outbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.|
|maximumOutboundRoundTripDelay|Duration|The maximum outbound stream network round trip delay.|
|mediaDuration|Duration|The total modality duration. If the media enabled and disabled multiple times, MediaDuration will the summation of all of the durations.|
|networkLinkSpeedInBytes|Int64|The network link speed in bytes|
|outboundPackets|Int64|The total number of the outbound packets.|
|remoteIPAddress|String|The remote IP address for the media session.|
|remotePort|Int32|The remote media port.|

### Derived types

| Type                                                 | Description                                                         |
|:-----------------------------------------------------|:--------------------------------------------------------------------|
| [teleconferenceDeviceAudioQuality](teleconferencedeviceaudioquality.md)    | Video teleconferencing device audio quality data.                          |
| [teleconferenceDeviceVideoQuality](teleconferencedevicevideoquality.md)    | Video teleconferencing device video quality data.                          |
| [teleconferenceDeviceScreenSharingQuality](teleconferencedevicescreensharingquality.md)    | Video teleconferencing device screen-sharing quality data. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.teleconferenceDeviceMediaQuality",
  "baseType": null
}-->

```json
{
  "averageInboundJitter": "String (ISO 8601 duration)",
  "averageInboundPacketLossRateInPercentage": 10,
  "averageInboundRoundTripDelay": "String (ISO 8601 duration)",
  "averageOutboundJitter": "String (ISO 8601 duration)",
  "averageOutboundPacketLossRateInPercentage": 10,
  "averageOutboundRoundTripDelay": "String (ISO 8601 duration)",
  "channelIndex": 1,
  "inboundPackets": 1024,
  "localIPAddress": "String",
  "localPort": 2000,
  "maximumInboundJitter": "String (ISO 8601 duration)",
  "maximumInboundPacketLossRateInPercentage": 12,
  "maximumInboundRoundTripDelay": "String (ISO 8601 duration)",
  "maximumOutboundJitter": "String (ISO 8601 duration)",
  "maximumOutboundPacketLossRateInPercentage": 12,
  "maximumOutboundRoundTripDelay": "String (ISO 8601 duration)",
  "mediaDuration": "String (ISO 8601 duration)",
  "networkLinkSpeedInBytes": 1000000,
  "outboundPackets": 1024,
  "remoteIPAddress": "String",
  "remotePort": 3000
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "teleconferenceDeviceMediaQuality resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

