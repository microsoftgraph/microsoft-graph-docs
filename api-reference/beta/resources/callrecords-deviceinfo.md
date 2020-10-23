---
title: "deviceInfo resource type"
description: "The deviceInfo type"
localization_priority: Normal
author: "williamlooney"
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# deviceInfo resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about a device (microphone, speaker, camera, etc.) used in a call.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|captureDeviceDriver|String|Name of the capture device driver used by the media endpoint.|
|captureDeviceName|String|Name of the capture device used by the media endpoint.|
|captureNotFunctioningEventRatio|Double|Fraction of the call that the media endpoint detected the capture device was not working properly.|
|cpuInsufficentEventRatio|Double|Fraction of the call that the media endpoint detected the CPU resources available were insufficient and caused poor quality of the audio sent and received.|
|deviceClippingEventRatio|Double|Fraction of the call that the media endpoint detected clipping in the captured audio that caused poor quality of the audio being sent.|
|deviceGlitchEventRatio|Double|Fraction of the call that the media endpoint detected glitches or gaps in the audio played or captured that caused poor quality of the audio being sent or received.|
|howlingEventCount|Int32|Number of times during the call that the media endpoint detected howling or screeching audio.|
|initialSignalLevelRootMeanSquare|Double|The root mean square (RMS) of the incoming signal of up to the first 30 seconds of the call.|
|lowSpeechLevelEventRatio|Double|Fraction of the call that the media endpoint detected low speech level that caused poor quality of the audio being sent.|
|lowSpeechToNoiseEventRatio|Double|Fraction of the call that the media endpoint detected low speech to noise level that caused poor quality of the audio being sent.|
|micGlitchRate|Double|Glitches per 5 minute interval for the media endpoint's microphone.|
|receivedNoiseLevel|Int32|Average energy level of received audio for audio classified as mono noise or left channel of stereo noise by the media endpoint.|
|receivedSignalLevel|Int32|Average energy level of received audio for audio classified as mono speech, or left channel of stereo speech by the media endpoint.|
|renderDeviceDriver|String|Name of the render device driver used by the media endpoint.|
|renderDeviceName|String|Name of the render device used by the media endpoint.|
|renderMuteEventRatio|Double|Fraction of the call that media endpoint detected device render is muted.|
|renderNotFunctioningEventRatio|Double|Fraction of the call that the media endpoint detected the render device was not working properly.|
|renderZeroVolumeEventRatio|Double|Fraction of the call that media endpoint detected device render volume is set to 0.|
|sentNoiseLevel|Int32|Average energy level of sent audio for audio classified as mono noise or left channel of stereo noise by the media endpoint.|
|sentSignalLevel|Int32|Average energy level of sent audio for audio classified as mono speech, or left channel of stereo speech by the media endpoint.|
|speakerGlitchRate|Double|Glitches per 5 minute internal for the media endpoint's loudspeaker.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.deviceInfo",
  "baseType": null
}-->

```json
{
  "captureDeviceDriver": "String",
  "captureDeviceName": "String",
  "captureNotFunctioningEventRatio": "Double",
  "cpuInsufficentEventRatio": "Double",
  "deviceClippingEventRatio": "Double",
  "deviceGlitchEventRatio": "Double",
  "howlingEventCount": 1024,
  "initialSignalLevelRootMeanSquare": "Double",
  "lowSpeechLevelEventRatio": "Double",
  "lowSpeechToNoiseEventRatio": "Double",
  "micGlitchRate": "Double",
  "receivedNoiseLevel": 1024,
  "receivedSignalLevel": 1024,
  "renderDeviceDriver": "String",
  "renderDeviceName": "String",
  "renderMuteEventRatio": "Double",
  "renderNotFunctioningEventRatio": "Double",
  "renderZeroVolumeEventRatio": "Double",
  "sentNoiseLevel": 1024,
  "sentSignalLevel": 1024,
  "speakerGlitchRate": "Double"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "deviceInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

