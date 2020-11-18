---
title: "suggestedEnrollmentLimit resource type"
description: "The suggestedEnrollmentLimit resource represents the suggested enrollment limit when given an enrollment type."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# suggestedEnrollmentLimit resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The suggestedEnrollmentLimit resource represents the suggested enrollment limit when given an enrollment type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|suggestedDailyLimit|Int32|The suggested enrollment limit within a day|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.suggestedEnrollmentLimit"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.suggestedEnrollmentLimit",
  "suggestedDailyLimit": 1024
}
```




