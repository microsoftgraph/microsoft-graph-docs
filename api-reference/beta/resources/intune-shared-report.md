---
title: "report resource type"
description: "Describes the report resource of the Microsoft Graph API for Intune, which supports multiple workflows."
localization_priority: Normal
author: "dougeby"
ms.prod: "intune"
doc_type: resourcePageType
---

# report resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Returns the content appropriate for the context, including:

- Device Configuration profile history reports.
- Enrollment failure reports.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|Stream|Report content; details vary by report type.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.report"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.report",
  "content": "<Unknown Primitive Type Edm.Stream>"
}
```




