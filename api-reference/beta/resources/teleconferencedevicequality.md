---
title: "teleconferenceDeviceQuality resource type"
description: "Represents video teleconferencing device session-level quality data."
localization_priority: Normal
author: "dongkyun"
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# teleconferenceDeviceQuality resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents video teleconferencing device session-level quality data.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|callChainId|Guid|A unique identifier for all  the participant calls in a conference or a unique identifier for two participant calls in P2P call. This needs to be copied over from `Microsoft.Graph.Call.CallChainId`.|
|cloudServiceDeploymentEnvironment|String|A geo-region where the service is deployed, such as `ProdNoam`.|
|cloudServiceDeploymentId|String|A unique deployment identifier assigned by Azure.|
|cloudServiceInstanceName|String|The Azure deployed cloud service instance name, such as `FrontEnd_IN_3`.|
|cloudServiceName|String|The Azure deployed cloud service name, such as `contoso.cloudapp.net`.|
|deviceDescription|String|Any additional description, such as `VTC Bldg 30/21`.|
|deviceName|String|The user media agent name, such as `Cisco SX80`.|
|mediaLegId|Guid|A unique identifier for a specific media leg of a participant in a conference.  One participant can have multiple media leg identifiers if retargeting happens. CVI partner assigns this value.|
|mediaQualityList|[teleconferenceDeviceMediaQuality](teleconferencedevicemediaquality.md) collection|The list of media qualities in a media session (call), such as audio quality, video quality, and/or screen sharing quality.|
|participantId|Guid|A unique identifier for a specific participant in a conference. The CVI partner needs to copy over `Call.MyParticipantId` to this property.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.teleconferenceDeviceQuality",
  "baseType": null
}-->

```json
{
  "callChainId": "Guid",
  "cloudServiceDeploymentEnvironment": "String",
  "cloudServiceDeploymentId": "String",
  "cloudServiceInstanceName": "String",
  "cloudServiceName": "String",
  "deviceDescription": "String",
  "deviceName": "String",
  "mediaLegId": "Guid",
  "mediaQualityList": [{"@odata.type": "microsoft.graph.teleconferenceDeviceMediaQuality"}],
  "participantId": "Guid"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "teleconferenceDeviceQuality resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


