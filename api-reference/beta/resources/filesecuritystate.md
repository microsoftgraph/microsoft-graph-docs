# fileSecurityState resource type

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Contains information about the file (not process) related to the alert.

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|authenticodeHash256|String|Authenticode 256 hash of image file (used by AppLocker and others).|
|name|String|File name (without path).|
|path|String|Full file path of the file/imageFile.|
|riskScore|String|Provider generated/calculated risk score of the alert file.|
|sha256|String|Sha256 cryptographic hash of the alert file.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.fileSecurityState"
}-->

```json
{
  "authenticodeHash256": "String",
  "name": "String",
  "path": "String",
  "riskScore": "String",
  "sha256": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "fileSecurityState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->