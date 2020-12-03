---
title: "deviceDetail resource type"
description: "Indicates device details associated with a device used for signing in. This includes information like device browser and  operating system, and whether the device is Azure AD managed."
localization_priority: Normal
author: "dhanyahk"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# deviceDetail resource type

Namespace: microsoft.graph

Indicates device details associated with a device used for signing in. This includes information like device browser and  operating system, and whether the device is Azure AD managed.

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|browser|String|Indicates the browser information of the used for signing in.|
|deviceId|String|Refers to the UniqueID of the device used for signing in.|
|displayName|String|Refers to the name of the device used for signing in.|
|isCompliant|Boolean|Indicates whether the device is compliant.|
|isManaged|Boolean|Indicates whether the device is managed.|
|operatingSystem|String|Indicates the operating system name and version used for signing in.|
|trustType|String|Provides information about whether the signed-in device is Workplace Joined, AzureAD Joined, Domain Joined. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.deviceDetail"
}-->

```json
{
  "browser": "String",
  "deviceId": "String",
  "displayName": "String",
  "isCompliant": true,
  "isManaged": true,
  "operatingSystem": "String",
  "trustType": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "deviceDetail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

