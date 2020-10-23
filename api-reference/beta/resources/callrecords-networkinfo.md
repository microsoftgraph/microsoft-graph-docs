---
title: "networkInfo resource type"
description: "The networkInfo type"
localization_priority: Normal
author: "williamlooney"
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# networkInfo resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about the network used in a call.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|bandwidthLowEventRatio|Double|Fraction of the call that the media endpoint detected the available bandwidth or bandwidth policy was low enough to cause poor quality of the audio sent.|
|basicServiceSetIdentifier|String|The wireless LAN basic service set identifier of the media endpoint used to connect to the network.|
|connectionType|microsoft.graph.callRecords.networkConnectionType|Type of network used by the media endpoint. Possible values are: `unknown`, `wired`, `wifi`, `mobile`, `tunnel`, `unknownFutureValue`.|
|delayEventRatio|Double|Fraction of the call that the media endpoint detected the network delay was significant enough to impact the ability to have real-time two-way communication.|
|dnsSuffix|String|DNS suffix associated with the network adapter of the media endpoint.|
|ipAddress|String|IP address of the media endpoint.|
|linkSpeed|Int64|Link speed in bits per second reported by the network adapter used by the media endpoint.|
|macAddress|String|The media access control (MAC) address of the media endpoint's network device.|
|port|Int32|Network port number used by media endpoint.|
|receivedQualityEventRatio|Double|Fraction of the call that the media endpoint detected the network was causing poor quality of the audio received.|
|reflexiveIPAddress|String|IP address of the media endpoint as seen by the media relay server. This is typically the public internet IP address associated to the endpoint.|
|relayIPAddress|String|IP address of the media relay server allocated by the media endpoint.|
|relayPort|Int32|Network port number allocated on the media relay server by the media endpoint.|
|sentQualityEventRatio|Double|Fraction of the call that the media endpoint detected the network was causing poor quality of the audio sent.|
|subnet|String|Subnet used for media stream by the media endpoint.|
|wifiBand|microsoft.graph.callRecords.wifiBand|WiFi band used by the media endpoint. Possible values are: `unknown`, `frequency24GHz`, `frequency50GHz`, `frequency60GHz`, `unknownFutureValue`.|
|wifiBatteryCharge|Int32|Estimated remaining battery charge in percentage reported by the media endpoint.|
|wifiChannel|Int32|WiFi channel used by the media endpoint.|
|wifiMicrosoftDriver|String|Name of the Microsoft WiFi driver used by the media endpoint. Value may be localized based on the language used by endpoint.|
|wifiMicrosoftDriverVersion|String|Version of the Microsoft WiFi driver used by the media endpoint.|
|wifiRadioType|microsoft.graph.callRecords.wifiRadioType|Type of WiFi radio used by the media endpoint. Possible values are: `unknown`, `wifi80211a`, `wifi80211b`, `wifi80211g`, `wifi80211n`, `wifi80211ac`, `wifi80211ax`, `unknownFutureValue`.|
|wifiSignalStrength|Int32|WiFi signal strength in percentage reported by the media endpoint.|
|wifiVendorDriver|String|Name of the WiFi driver used by the media endpoint. Value may be localized based on the language used by endpoint.|
|wifiVendorDriverVersion|String|Version of the WiFi driver used by the media endpoint.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.networkInfo",
  "baseType": null
}-->

```json
{
  "bandwidthLowEventRatio": "Double",
  "basicServiceSetIdentifier": "String",
  "connectionType": "String",
  "delayEventRatio": "Double",
  "dnsSuffix": "String",
  "ipAddress": "String",
  "linkSpeed": 1024,
  "macAddress": "String",
  "port": 1024,
  "receivedQualityEventRatio": "Double",
  "reflexiveIPAddress": "String",
  "relayIPAddress": "String",
  "relayPort": 1024,
  "sentQualityEventRatio": "Double",
  "subnet": "String",
  "wifiBand": "String",
  "wifiBatteryCharge": 1024,
  "wifiChannel": 1024,
  "wifiMicrosoftDriver": "String",
  "wifiMicrosoftDriverVersion": "String",
  "wifiRadioType": "String",
  "wifiSignalStrength": 1024,
  "wifiVendorDriver": "String",
  "wifiVendorDriverVersion": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "networkInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

